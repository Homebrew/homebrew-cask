cask "thunderbird@daily" do
  version "147.0a1,2025-11-12-10-36-45"

  language "cs" do
    sha256 "f83ece7c8e987617c5bb1959393f5fea1d93adc0bc9089653a4ee209c6320aa5"
    "cs"
  end
  language "de" do
    sha256 "512ee7c054acbb32bb7e33e5dbc58f5fc781f9befcf662e2ca07e6c61977fb83"
    "de"
  end
  language "en-GB" do
    sha256 "1ec485bafa286503a96a6e683ee66dce70b9993c1a79fefcb9a792a30945e333"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3517c87f5c803a8f4b85d0890c5eb4afbc6abde1d93c8af1487c8d2297a0879a"
    "en-US"
  end
  language "fr" do
    sha256 "3793a4ed176b687b98cd2a0ef1ec0b8aa3c916cf47fa622d4828efaf1287fba3"
    "fr"
  end
  language "gl" do
    sha256 "d9c5c3e3ec85bf385ece042c3546f98c93ee4c432f88b376ca84f035b8b2e1a9"
    "gl"
  end
  language "it" do
    sha256 "3e7b7cf4bcc06e87c9e2c81079392e4815f0f7a643da4a5232dab09b8ed91a99"
    "it"
  end
  language "ja" do
    sha256 "060ac0d66705da54141922d3e81109d6b1fba2fc0f32c30ebf12fce8503762ba"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4db56063dc7783cae843b529af59c72479f76ae8bc81544b87fffbd1bc693172"
    "nl"
  end
  language "pl" do
    sha256 "9b3d20aba41640bbcd058af64223e73895ccb1fbeb36f9ab0baeb2bae8586a99"
    "pl"
  end
  language "pt" do
    sha256 "28618fb4b2fe29231d2f23f9237ea00fd14d902b66c0d3f345c13a52ff429735"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b768852c1a612aa15de87a6517b596bb951d9435cc73a62ee4246f43bf56e685"
    "pt-BR"
  end
  language "ru" do
    sha256 "6b4d0a9dc9d56260cc695aa3b927fef68df6bb36ee64ab6a0645db10ea85a5b0"
    "ru"
  end
  language "uk" do
    sha256 "49dde031590df896b323efe750f3c1a263c8450772d514c848ab244c8864b37b"
    "uk"
  end
  language "zh-TW" do
    sha256 "3b173f1eab365512d8984402121c871ca21aa4cf5b927250ab85ff380e7f4f11"
    "zh-TW"
  end
  language "zh" do
    sha256 "8c933205a0f5dcc1be843aac275a78a62d80ed0c310fd51c77cb4d807b2e99ce"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg",
      verified: "ftp.mozilla.org/"
  name "Mozilla Thunderbird Daily"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/daily/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/thunderbird}i)
    strategy :json do |json, regex|
      version = json["LATEST_THUNDERBIRD_NIGHTLY_VERSION"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/thunderbird/nightly/latest-comm-central/thunderbird-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true

  app "Thunderbird Daily.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end

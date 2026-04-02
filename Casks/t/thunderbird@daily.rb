cask "thunderbird@daily" do
  version "151.0a1,2026-04-02-10-24-28"

  language "cs" do
    sha256 "acfbe462a033469cc3196ef405d7cf69f5b0e80b3f78ab6717d4b3096c5b6966"
    "cs"
  end
  language "de" do
    sha256 "dec0bd2a5b22c6f4ab9dd8b80d993de3a982db2b21c835a9e3d9e5a7e67cde37"
    "de"
  end
  language "en-GB" do
    sha256 "96de8d1d77f0b95a8ec48daea1cc3f3ee4daba48307fdfc20acb1590e4596eb8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "71746b5451804d752d3452b47a796bb5ce28484e418bde4194d488881323edea"
    "en-US"
  end
  language "fr" do
    sha256 "3c579d96beeae7e5f2bcece8e97280384315d1ef324b036e5fffe8729fe4b6c0"
    "fr"
  end
  language "gl" do
    sha256 "8cd7ebf5983e8961325d1080c9af10964b054b30234c5f7745f78687b69490ca"
    "gl"
  end
  language "it" do
    sha256 "f5fc542df1e54990f8b0a5d46ec63f94d3f36b85c42f61f1c49381340336331a"
    "it"
  end
  language "ja" do
    sha256 "f4ea54f9cb60522f3e555a22c36e55e9d788cf013150999927855f516a101166"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "98099eb69d979384c5a4054f1fe8a121bbfddb19ba1312d900f63b96b059f01b"
    "nl"
  end
  language "pl" do
    sha256 "3a6c077a80dd5f10718c4fe978083de52e97cca72077cdee12d57d97c7c42ea6"
    "pl"
  end
  language "pt" do
    sha256 "ce856a0f6da911d30343d7a318bbe13fa28f6d869bbe7819c335e0a4f692a597"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "0d27d4adc9d53c64d66590764307965ebefecc885d3a403444cd742c2709b1a2"
    "pt-BR"
  end
  language "ru" do
    sha256 "555b37c605f9b7c030d22f32d41cf3cbc13a8ba645f5ceaa533cb45785642ed6"
    "ru"
  end
  language "uk" do
    sha256 "88601817a1d786df6388c46604e01f1fc600e1f12c10dd35e56eca377b5009cc"
    "uk"
  end
  language "zh-TW" do
    sha256 "0928557a31f39c96070e09bd52c995473e0bc781a07ef6b360540f184b69f0e7"
    "zh-TW"
  end
  language "zh" do
    sha256 "dd087e8c8ae635d57fe0db458464477a30da07bbd0c92fb594ca44f58f035fbf"
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

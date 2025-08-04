cask "thunderbird@daily" do
  version "143.0a1,2025-08-04-10-58-23"

  language "cs" do
    sha256 "c70db264853a5b93ae9d945b042a0c50d4810eb9ac0612bbd81591a70e21ff2b"
    "cs"
  end
  language "de" do
    sha256 "a46a4404c24c62a2a9cd29b4fe100f5d20d62895cc91dce3e6835496f1358a79"
    "de"
  end
  language "en-GB" do
    sha256 "9b8ba0a2131da6ed5ec19e5174b84e72f2d6fb5da14e35370bb8966ce7918656"
    "en-GB"
  end
  language "en", default: true do
    sha256 "be57c4155e7679aee5a37b47ac1d211cc5deaf197339867f41bd162c0f627b2d"
    "en-US"
  end
  language "fr" do
    sha256 "a2534ee89bc01656c8072083c480be21437600cb19feb91f7efe9712fb49a143"
    "fr"
  end
  language "gl" do
    sha256 "9a1887b7875f45268ce80920e36afb833a3a289ca460e72c64f706a969d40688"
    "gl"
  end
  language "it" do
    sha256 "2218fd09606c14810014bd11f5187f3549a291b589739562a2c42181f72bd48a"
    "it"
  end
  language "ja" do
    sha256 "9e1cf5fe3f776412da85aaad2d580e4137109c006b76d710156de9cbff738a95"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "252e8f4bd49ad316f99846f072db41c49c5c30c99e28969b49ad0dfa97a7c29f"
    "nl"
  end
  language "pl" do
    sha256 "86c2732eaf5045ad7627b5dd43ff8b71333f17ceb608f5fbee49a6841aed65a9"
    "pl"
  end
  language "pt" do
    sha256 "b5d5157f8e6da6b090766fc45f3560a9c97338f5a4539c0c6cf418cc172a8001"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "0cc8aa578f7f4d030ec3e30f5aff656191f1b1b01ca47ef2c30818f292694658"
    "pt-BR"
  end
  language "ru" do
    sha256 "4ac21dbaab3b6914d49704c409fd4ae3acf3e5b1f1186d97ef73c1dbe547160f"
    "ru"
  end
  language "uk" do
    sha256 "57077f4fd491bda6d4506df73234010ba11e31c35b0791bb23cef0cbdc6aec6e"
    "uk"
  end
  language "zh-TW" do
    sha256 "34eda0708b2ae90422bf724df6ee8c1ac41b9ba0cd022c0e632c4089831e3194"
    "zh-TW"
  end
  language "zh" do
    sha256 "67994449394f1338bad1f5860d8fe2bb2c99d324bbc11602fc6952c91b7eeaff"
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
  depends_on macos: ">= :catalina"

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

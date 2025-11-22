cask "firefox@nightly" do
  version "147.0a1,2025-11-21-16-34-39"

  language "ca" do
    sha256 "d4bdfe194fea408525e81595338edec58a2f2221e00a5fad00c7665307f07a81"
    "ca"
  end
  language "cs" do
    sha256 "46b333f1214b186b7731cdd5bba4c795f415d849b2611a5e5b570628e79392fb"
    "cs"
  end
  language "de" do
    sha256 "9f24c81a20319c07215d649a0583527565fe889bb1af4108bee9d7cf67586455"
    "de"
  end
  language "en-CA" do
    sha256 "d15abc328e03b4f7385591174aedbfc49de9bc673ef03985211e392a0c3a6540"
    "en-CA"
  end
  language "en-GB" do
    sha256 "891ed960a1867da59acfe1744a35fc33056ad16e038a982a2430147c581ac332"
    "en-GB"
  end
  language "en", default: true do
    sha256 "eee860733265cfe07d8f74ff8ad91775e18e3e0d303d28b7b52c74f8b998f13b"
    "en-US"
  end
  language "es" do
    sha256 "a1c7dc66feb874b5ae47362855bf7be8e49ab1cb10c59bed2b708958bd300fb9"
    "es-ES"
  end
  language "fr" do
    sha256 "39a76620ab83932d761b2f7a7ff60c65794a4aa6871c481f1022c51bfceeeaf6"
    "fr"
  end
  language "it" do
    sha256 "11f250ccf86b191cbfdf1ecfd805543c2ae410c066a62877fbe9fc960dcebae0"
    "it"
  end
  language "ja" do
    sha256 "e00f241dc005f83fe0e8078fc9a458fa8f27f899a29dbc1c04435d82a259caef"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e7134d582dc3a23dafea4b48e3e5c19d1ab95bb980d3216b3cdef9479a73816d"
    "ko"
  end
  language "nl" do
    sha256 "18bbbc385f6f611917622defa81581b2fdeac3f97c5ea78d332bfe17f490780f"
    "nl"
  end
  language "pt-BR" do
    sha256 "9eb4cae4680cf40d843ce33945912302d40cce66ecbb6f2310bfc938a002a528"
    "pt-BR"
  end
  language "ru" do
    sha256 "513f3a29109d02ea3d1ba8fe9d6792280c504c66919b380173d3b228835bdd11"
    "ru"
  end
  language "uk" do
    sha256 "ffc7ba209ef93d0c25b2b0bc9a75fd198a122fec34478a9a3bddec7ebf41b465"
    "uk"
  end
  language "zh-TW" do
    sha256 "37058e7e80e77601b447eee5f169b649e99aeec1317379c259770f3e6821c0bf"
    "zh-TW"
  end
  language "zh" do
    sha256 "2a15ce7b537b9f8ac0672816b21a318542370634ca980c165cfc994719f5cec6"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/firefox/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-mozilla-central#{"-l10n" if language != "en-US"}/firefox-#{version.csv.first}.#{language}.mac.dmg"
  name "Mozilla Firefox Nightly"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#nightly"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/firefox}i)
    strategy :json do |json, regex|
      version = json["FIREFOX_NIGHTLY"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true

  app "Firefox Nightly.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end

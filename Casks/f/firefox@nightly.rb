cask "firefox@nightly" do
  version "151.0a1,2026-04-16-15-59-48"

  language "ca" do
    sha256 "949e362370e4f90e03e8ed547faa2eb4f494f78a6433a0b1bdc1bcce5fe49bf6"
    "ca"
  end
  language "cs" do
    sha256 "f76bde8b02be9c96de73bf4894e3664f8c4011b577682a498b80efa5b2bad034"
    "cs"
  end
  language "de" do
    sha256 "29ef826051cef447a35316a97525750583a135324c90237f52844aa724f41c41"
    "de"
  end
  language "en-CA" do
    sha256 "9e2596083686b18687d4bb987d0d4c215b3608f63b696ee08b9b44e16a140e10"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e50f4bbbec5bf8d17e0dd5a4a16f04bb84f7555c0a8ffefc4560ba7208c9d1a5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8c48c2e197a202c25452bbbbf5579aaac1ea68b0008144e31075c2c487596fa4"
    "en-US"
  end
  language "es" do
    sha256 "82190ffc4681faef3f1989a04a4ab090f63e95975df53e434c7a8dc770f732e0"
    "es-ES"
  end
  language "fr" do
    sha256 "5521d14e4130ea034e171b0b8572708e02e5b107af6b72d7c2d4b6f2c9c0658e"
    "fr"
  end
  language "it" do
    sha256 "96a06afc30f712d1a1f9b353085fc5fa03633467e776495abf4c3c521e8589f6"
    "it"
  end
  language "ja" do
    sha256 "64172399ef449c4735e1e4bba4fe845a462df53331e96810d73051f6583040fc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "16379d287d843667ace8f78a3c32ae3808de8c616a9fdc73693efa49d8432cf3"
    "ko"
  end
  language "nl" do
    sha256 "1ae09010b959c29ca839e17efa0c126f94d81e1b9359403c5e26f4054367099f"
    "nl"
  end
  language "pt-BR" do
    sha256 "5e76442454e5885c98ee7c9cf40e41eef5ae53e1b1dfa139089e8d74cfd8d2cc"
    "pt-BR"
  end
  language "ru" do
    sha256 "305f486edab31044ca1215927a1d6257d1e16116d40c2ad37eb52ffa1e04004f"
    "ru"
  end
  language "uk" do
    sha256 "2db1a065363448c0de45fe2bd31a36b020c8a482801645d981940c5bd9a86c4a"
    "uk"
  end
  language "zh-TW" do
    sha256 "4dcf3040243bcc1f0079ad3c55210a7cf9b01b315f98a145fb1b39b63500b6b6"
    "zh-TW"
  end
  language "zh" do
    sha256 "a2e75b5ce24e6e55a377fe7ade8332a861445e3bb417213a386f8106ee6d1d6a"
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

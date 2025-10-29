cask "firefox@nightly" do
  version "146.0a1,2025-10-28-21-59-09"

  language "ca" do
    sha256 "ee7b11bfc399fa79d357625550ed302f4cce1a23e49d78c0b84c833fca1ef249"
    "ca"
  end
  language "cs" do
    sha256 "f71dd70265b18f4a199fb52b4701b1da23e1203d625fb4a7abd27a3bc065e705"
    "cs"
  end
  language "de" do
    sha256 "17aed55dd50f245dd7b97f0bce3dbca919658b87ce7231a1733baaef382cfa97"
    "de"
  end
  language "en-CA" do
    sha256 "68b8146063e65bde8ae2ffc1016130c7112789f9d025dd132cd47c97202c46ba"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b427ff9b06c69fd55625c8dffe98b8ee343d25978c58e6deb7360d3cc6125cbe"
    "en-GB"
  end
  language "en", default: true do
    sha256 "18be33088e287994b4645ea9dfaf733523a3b973cf08398243c813ccc8dc6d8b"
    "en-US"
  end
  language "es" do
    sha256 "cb9cc5b4107a2e11ede4467dc7107ef971093183dfa4331ab8c2e1f80a122140"
    "es-ES"
  end
  language "fr" do
    sha256 "180cafafdbf2b4362d3032cecb6dcc64cb7df6d7062b79187b24cb2cd11a13f7"
    "fr"
  end
  language "it" do
    sha256 "3581acb8cf31f6638f7c3558864d22db82ddbf25b4a64e56451a0ab12adea647"
    "it"
  end
  language "ja" do
    sha256 "70958d701547249b367f5816a39e1cbae33f29d8ebec88e932662573e6030a92"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "53f413e5436302a277fda1c47ef8c285e4db5d6c3142e0727f3830ef9c639b84"
    "ko"
  end
  language "nl" do
    sha256 "6468b7c256670e229abd8c5cc8a2a8fba70be9d28ed214ab25717985ac336cad"
    "nl"
  end
  language "pt-BR" do
    sha256 "347bd57f25a7a6a1621148ebd241ef8ab296cc89bc187ec7120a452e18eef323"
    "pt-BR"
  end
  language "ru" do
    sha256 "49347fab5026b1933180e864051563a5a2533281889a7e28060ce0dcb5986e19"
    "ru"
  end
  language "uk" do
    sha256 "2563b14929a0de6eb5c8206f49c1c8f978ab26cdc0159be21f6d4c9a81ebc4bd"
    "uk"
  end
  language "zh-TW" do
    sha256 "ace82c9a9d2ca1d2e3fef31194e86291c48ecf87cd83bef40b3a436fb527d600"
    "zh-TW"
  end
  language "zh" do
    sha256 "934ca0c51b5be56576abc8024e0122cdcc68cadfed1d494b29c5ef2e0961e841"
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

cask "firefox@nightly" do
  version "148.0a1,2026-01-12-09-46-56"

  language "ca" do
    sha256 "7ac5dcd7daf88c2eadacae2ee942399bb8c059db928724b8dbcd3a50386f96ed"
    "ca"
  end
  language "cs" do
    sha256 "5e6bf4d6f22b0064d29aa36bb4732e10f5ce9053676aa74417a121a54f8fd3ac"
    "cs"
  end
  language "de" do
    sha256 "50e7637d02470e3bab63f88ca97945208b81190631f4053dfff76c24c60e855f"
    "de"
  end
  language "en-CA" do
    sha256 "2ec3aab3caee30297fee1ec5bcba1c0fa79eea1d2e41ca04fa7aa0f3ebd1dc2a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ffd91e09ed62734ced4b704d0f00b114b6f34ea52f842eb3a96fa4882396dd39"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0aec7c49ff1fb089940f3dba2592b2b08dde6fae7f0831193003734dfa3077c6"
    "en-US"
  end
  language "es" do
    sha256 "d008f2567afea9371724867b73c18e65b8f1caf04115b86449658ac4ead862fb"
    "es-ES"
  end
  language "fr" do
    sha256 "a84d757602ce09f5454f3360168743f1f7fcb6ef928d23773574eb0285f84fad"
    "fr"
  end
  language "it" do
    sha256 "db20c2bd69d7ec6051b22a024def0603cd8c89dbbf68ed535e4a4e5150eca7ab"
    "it"
  end
  language "ja" do
    sha256 "a270140642f0a48c6d88527eccbef8c7120557c8f3bafeb9363b3bdb04c76b00"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "51e405d965337392d0c0933ca22b40ddacda28187de6a77df7b445eb7f9786c4"
    "ko"
  end
  language "nl" do
    sha256 "b1ab17ec96a0f3b989c7e67e7e51b9826928bc3df6412a5b9d32233f106ebbce"
    "nl"
  end
  language "pt-BR" do
    sha256 "1fd56200d8bfb850a1ca8e1142b990034344513fd9dd6e941f4aba9c9da5a716"
    "pt-BR"
  end
  language "ru" do
    sha256 "6c4c47a26071ef00af5c38cc77a2637f9e47d1746bd5acadfbd750e762980982"
    "ru"
  end
  language "uk" do
    sha256 "dd68ff2b90701358968d08da2de209b62e9ddbd1454cdc473dbb32d63404c60b"
    "uk"
  end
  language "zh-TW" do
    sha256 "93025d1d3cb2f3b0a0352225e642df16a73291be668637fce6da9e7de41d04ec"
    "zh-TW"
  end
  language "zh" do
    sha256 "fac871596dff761024611876744bba581e12d086846e67e7055a44e38ad74896"
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

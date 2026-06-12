cask "firefox@nightly" do
  version "153.0a1,2026-06-11-21-43-44"

  language "ca" do
    sha256 "6466d60322dbbcd1b49e9df4787e74cbffd801b449bf093e84eee73e9d115a44"
    "ca"
  end
  language "cs" do
    sha256 "af8e34ee3f647ea552336a017558293771c488ac9d1fbc78955e09e81e80865b"
    "cs"
  end
  language "de" do
    sha256 "7edae8eb6e43ec267c028ed91dc3860427bebd4aed5f3abbc7c13b0b261aa0d0"
    "de"
  end
  language "en-CA" do
    sha256 "165f4001a460f642820ed8b2a3006c774348b0a649d7379b9189ea52c42aba3c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3bb35401845b5660623e88c792d71939774176b78d5488113d43690cdda29eb7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b0ebfbacf5c8e9d9ac9337232d4f994b184fe4b1082d7aa70c78ef488ca68643"
    "en-US"
  end
  language "es" do
    sha256 "da098b4c88f24b2ee7258d5269567d58e5c64b635b6fea3787cd4e5b5165153a"
    "es-ES"
  end
  language "fr" do
    sha256 "576bb750201512a07e6825d8845188dde6fc3bd0cc40fc6fd5a1e82e7c3bbeb0"
    "fr"
  end
  language "it" do
    sha256 "4b3ce9c5cce78a62b914cfa895e89e5f51bafb5f30b084a555283ace9b0ef28a"
    "it"
  end
  language "ja" do
    sha256 "cc95c5aa3fda53e203551f3b2dc6b98bfc7f46384d50e3603c182e0613411c9a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "283e589c578870471e5612a9e5fefb7860561efe4f83d2f9da19b68312d4b47e"
    "ko"
  end
  language "nl" do
    sha256 "7cc7e008906ff8d8a1fa7777044516e9426082b4e299e2891a3f495e8da653a4"
    "nl"
  end
  language "pt-BR" do
    sha256 "ee2a2e09457e57ca2431f6c87aea8409e57412f3f7fdc3bd77936c91ab730051"
    "pt-BR"
  end
  language "ru" do
    sha256 "b8f324cfa06af50b22073269b78942b87c62aa99b5d2edbd041e422b5fb416cd"
    "ru"
  end
  language "uk" do
    sha256 "2a28741c085dc450e6abb360a2e3b71ff10847064faa41c4628ab9836dc2e319"
    "uk"
  end
  language "zh-TW" do
    sha256 "a484d78bc0f63519eb4560f166659ea6145e07d002525272d2384091802e693f"
    "zh-TW"
  end
  language "zh" do
    sha256 "09485740ac095e4c9d6b6140b19cf7e59c4006c6d189bee8d4ccc8671ac986ba"
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
  depends_on :macos

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

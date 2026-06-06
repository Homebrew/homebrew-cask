cask "firefox@nightly" do
  version "153.0a1,2026-06-05-21-03-19"

  language "ca" do
    sha256 "9a2af87d38e17241867178fdb9711d6af7c52d00eee8224f098a2b6f7781395e"
    "ca"
  end
  language "cs" do
    sha256 "a4f80322384e94b6ee40568644180d47deee43590c73a86ae664374419fe2151"
    "cs"
  end
  language "de" do
    sha256 "ad3671efc98b91ca8b32f61960a2b3b8f9da6abbc85c65e3129f17cfc7649e24"
    "de"
  end
  language "en-CA" do
    sha256 "265048e5af68541764413d2991ce5b3a60ca0f2fd76d6db8bceb9ea2dbb31fd0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fe7d39c1aaf9754aa36fe2514051d5b0268b22761e4e64390a531fc7d645aa14"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bd0f29499c2c974a054edd1b9206207b325e8188a6094343b2e9ee4dc4a27099"
    "en-US"
  end
  language "es" do
    sha256 "9a6e0491c1fba3b58eaf3360970cbc3528e5340c53044168baf633731c4b40de"
    "es-ES"
  end
  language "fr" do
    sha256 "973451e8bce9d78149154daafcb384c3c8fd883d1e25400d36d3009831c12d92"
    "fr"
  end
  language "it" do
    sha256 "bcb0098bfe453eda316233e1f3c8466da014b8bf1be2a39be7ded1c7fa44af6d"
    "it"
  end
  language "ja" do
    sha256 "87c494cb2ad2ce8a73690711705b866e06cb3df6bdc8700d1d09d99efb847d8e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7c5f99c33b8c9eea35d20c0c897c23cdfd07821303b8240f964fd7a4f2430d60"
    "ko"
  end
  language "nl" do
    sha256 "96773845332ad836e3a4f12f12485b6ec465a77752e70226c43f559971c22a2a"
    "nl"
  end
  language "pt-BR" do
    sha256 "e7497f3def9a30ee55dab252abd7fd514841bcb5bb6d2883f5caf3c2f6502097"
    "pt-BR"
  end
  language "ru" do
    sha256 "f756aa84b555489e9425248778e56237df48fdddea152829e70b96ad6566d89d"
    "ru"
  end
  language "uk" do
    sha256 "ba1f774d78a0b9f1b93192b917e2f849cb20ad0b4aec89c231c550191e80c269"
    "uk"
  end
  language "zh-TW" do
    sha256 "0dd5504d4cd03affe0e54453d5134c073f09220086f04f01f077741b17212d3e"
    "zh-TW"
  end
  language "zh" do
    sha256 "e5c9f57ca7146218e9a1c7262ad832d7490290f4536d3815c58c19d134dfbed3"
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

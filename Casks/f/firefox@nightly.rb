cask "firefox@nightly" do
  version "158.0a1,2026-09-20-20-44-30"

  language "ca" do
    sha256 "de3b059a8f888897da54e64b2076855f31614c77af7caafeb7a131112fdcfc3d"
    "ca"
  end
  language "cs" do
    sha256 "ad1dd2d54e5dcaa1bec9f5b49f404a620ff7ce1dbba29821cd873b599a1b5567"
    "cs"
  end
  language "de" do
    sha256 "51d9c7dc6dfbe74e944e8a600e41c2a7059dfb64cec5a9911efd6a0bc13f641b"
    "de"
  end
  language "en-CA" do
    sha256 "a3677c966fea9043c2e8afa650c0f52d2ef1623fac21907705e3c0c236dad7de"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5a2be18ceabbdec38bf585b2d6483bdc3677d69ff2d3d164d42c27c4e2ab979b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a3a058e7088a1b5097f9c3e983b253469a967bd8c05906c2aac34499a4debca4"
    "en-US"
  end
  language "es" do
    sha256 "529d54826184f15a9cd34df55e94f79856f743d52bbe70cc1caa2f868a8a019a"
    "es-ES"
  end
  language "fr" do
    sha256 "9aa28a2bca0cf548751f6c872a33b2c51c4e042bc8645ab00beb9bf2602a433c"
    "fr"
  end
  language "it" do
    sha256 "9771f3532f1448589acc1aef88a9e72a0643e66a634b38b479bf6895a9be3c2f"
    "it"
  end
  language "ja" do
    sha256 "a2b88adebd2896df580163071aa5210bd6f3b7d447f176dcd38a416255405550"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e7a1150db34eaa4be1f1950794fb4192123e972c8758230f4923153ed822f488"
    "ko"
  end
  language "nl" do
    sha256 "068d4719ab323cc6b1f1b3ed8fec6dbe89b32eea3063f4f36817b4107267d915"
    "nl"
  end
  language "pt-BR" do
    sha256 "435af34d49f8788fc8a3939ccaff56cc5e1fa4ca2caba6b6e93413dfa8d9a055"
    "pt-BR"
  end
  language "ru" do
    sha256 "a7ede7c46d9796217e864bf031181eaf49e92ec25d2262151caeb58a4d0b52e1"
    "ru"
  end
  language "uk" do
    sha256 "d28391a545fabe68acad57b8231b11e1fa3186a0cd4f3028862208d8722d6a06"
    "uk"
  end
  language "zh-TW" do
    sha256 "a3806bda7fe6402ed931f56b53f002574547ea41313e8fa920a34f22f0fe9a2d"
    "zh-TW"
  end
  language "zh" do
    sha256 "3eaeaab2fb87f65663dc44591c97a8a85d19c00b2ecb4e525e3240f2d1aa57b3"
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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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

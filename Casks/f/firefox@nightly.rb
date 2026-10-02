cask "firefox@nightly" do
  version "159.0a1,2026-10-01-21-41-12"

  language "ca" do
    sha256 "c1e6e143bae15537b55eee99219c8d49923b249fa5eac52765a0756d3437e9c5"
    "ca"
  end
  language "cs" do
    sha256 "e8b188db0557d1f4571f28675b9bfc261d70bb299717bb854417719315fdf99d"
    "cs"
  end
  language "de" do
    sha256 "f6f776137f2651e7301dc0f8c0680c692d1d3d343bb22635e208b5208d21f7d3"
    "de"
  end
  language "en-CA" do
    sha256 "1a48b911f515b120f300836e2284821c68003d280ce1aff1edebe66b31c81cb3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8dd9d688dba519e323b3e4f1f6f38500adbb95fb9924ea4460e9227e91fb2129"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d1083d6ad9a9475dc03cec53702188a78ec7969798903c90ab4abc2217661239"
    "en-US"
  end
  language "es" do
    sha256 "32fcf3997a124a7891f5f7777e71d7a0465f18f658e07c60069c8262b5300b71"
    "es-ES"
  end
  language "fr" do
    sha256 "862cdbe283ef6094ca7157e27f95eb4ab88843e29e4ab232da98c0503581f865"
    "fr"
  end
  language "it" do
    sha256 "577b1cc0b772e8eb01eb82c92ed75e8e7a45bc35f41af3536883fe83e513c7b9"
    "it"
  end
  language "ja" do
    sha256 "f84da4cbfaddc8ec8be4b02d19bf2b8bf66e449ef05e7d910e33054393742018"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7cdee4d07a3f79c130518979df91a3801fcc1df3732f072c2e8c3a63ab720e23"
    "ko"
  end
  language "nl" do
    sha256 "46ed7e9cfc259ade8f10fefe7f713074dfe40bca12e8bf9134680eac8fb5c7ab"
    "nl"
  end
  language "pt-BR" do
    sha256 "4e0688064336cd4830bc4d93ab500d042c0b6799c338e52abf4b1237a3df6412"
    "pt-BR"
  end
  language "ru" do
    sha256 "191db0598d94dc93d86d468ecfe3af023874e20cb623ea4707915d6a39072ed0"
    "ru"
  end
  language "uk" do
    sha256 "de0ff30f91e59d512e01fb02c05f0dbefe0859038d35986ee9d14b159330c6e9"
    "uk"
  end
  language "zh-TW" do
    sha256 "a2eb4c7b74137c84dda90a53fe6bbab55ef5165cbf47a7e9612a205ead4057d8"
    "zh-TW"
  end
  language "zh" do
    sha256 "e66ff4a3ef297ff0afe7794f5ed0641133fb0019f216a8f14f71eb212e01650d"
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

cask "firefox@nightly" do
  version "153.0a1,2026-05-20-09-22-11"

  language "ca" do
    sha256 "1e4a56e32dd1a6113a2b2538e5c428982d5f5d0db78d3d2d90734c3b7ad09efb"
    "ca"
  end
  language "cs" do
    sha256 "d25425118b4eac1b4bdb256b1f84c94f4ced64fdd1306894dc0a56475d3d9186"
    "cs"
  end
  language "de" do
    sha256 "5a0d4bb5e1db7a6c074e849fa2619e6f14eff416d1f00652da7b792d72b60c88"
    "de"
  end
  language "en-CA" do
    sha256 "3151e3a4ac1892398627ab3be2b371e56c534bea5e07bc2fa2f6282c3e040401"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ec199423c421dd4e3b8ce49ed169e480c8ca04441580e7e7f9e66eb6e8266625"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f1f986375aa3c435156356e31e28698dd1cf7164d0ff9464b35fbdcbcd1a89a1"
    "en-US"
  end
  language "es" do
    sha256 "981d7788fc16bae557c14bbf54529857c0066663998169cc4644c0a5adaa7ad6"
    "es-ES"
  end
  language "fr" do
    sha256 "c5620080a93004d141afb90681992be0055896e6c2fbadf348d1bc6cc298f9d0"
    "fr"
  end
  language "it" do
    sha256 "a667e5ed45db1df37175eedb9945784151c756c1307cd3b2ce696b3afe730298"
    "it"
  end
  language "ja" do
    sha256 "665c9e8835d9606556ead14baeefea89d58849c0868324ed71a6b34a0c6445a0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4a6948d1dcbfadab5b40a4aadb34b472a2b9244978f523614d7b4755c248db3c"
    "ko"
  end
  language "nl" do
    sha256 "49612ac990b1888ffa8a52afa73189e7ccb524c2c8d7979de9530bed27173460"
    "nl"
  end
  language "pt-BR" do
    sha256 "b7c61ef9a23c1ac4fb427861cad2aeb7f0d39bb74fe72b1b26182c52f656918a"
    "pt-BR"
  end
  language "ru" do
    sha256 "6b4af762a4cbfde870e4b50066591771a03617ddc853dfb58f1a30afdcedf6ac"
    "ru"
  end
  language "uk" do
    sha256 "d5cf9b05fafb6aae199872b1a5f87e423391959836b4b0b0ef9cf532b9f9e699"
    "uk"
  end
  language "zh-TW" do
    sha256 "247ef594a1e3346df0a1e66585945720eef4232940f19420412d15949aba70f8"
    "zh-TW"
  end
  language "zh" do
    sha256 "0e74a065c58e91a6e6eabfb2dbe1b1e569b0ddbdf57540843e3329e884ee8ffb"
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

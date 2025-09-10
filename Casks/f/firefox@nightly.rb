cask "firefox@nightly" do
  version "144.0a1,2025-09-09-20-57-47"

  language "ca" do
    sha256 "18f7420c290410ab53a5d2341ddbdc40be21b83b026bc9166e60628908c77d25"
    "ca"
  end
  language "cs" do
    sha256 "9463567a2c50d7e2df8b3d800822f015753bd0231345efd3b213ffc927227c1e"
    "cs"
  end
  language "de" do
    sha256 "11034b27ed035c7d7277a49fa3975ecf9e8dd6a0d0ed84f5c416a75c79fbcedc"
    "de"
  end
  language "en-CA" do
    sha256 "e39500c8b6e141d9c23c2c9cfe47981ae3bde6d28cb210b7182b203e57946cd4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6e688e4045c4bddd16886928886e9f54cec55ecf3676549f549a937cc9a1a132"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3eabe2c9f0fbc47008d722bb7db98bed2871cd469606d4db14ddcf9785dd3a81"
    "en-US"
  end
  language "es" do
    sha256 "1f8a12504d4293b6f7b53743815fece329046adc804988b981b06292dd9e5576"
    "es-ES"
  end
  language "fr" do
    sha256 "2a2e95cf3b59642b3bdbea04d1a4d38f32cf24ddafb1aee031a4a1ffb2bf8b00"
    "fr"
  end
  language "it" do
    sha256 "b32d25ea17d0c6f5644b71aaaebd8d78ebaf3191663dd915e22c6fbe9a7aebf1"
    "it"
  end
  language "ja" do
    sha256 "26667c994852135508db6fc3437b828a50d386c0ba6915a511b387d0a2af783d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1ccbc5f0c3d82ff2276e7239a0069e5b1aba45146fae1c374d565ab1a6914747"
    "ko"
  end
  language "nl" do
    sha256 "7d8a5ab5e456cf4920c0106e8d9316dd313973d0989d151cc04029025c20b0a9"
    "nl"
  end
  language "pt-BR" do
    sha256 "cbdef698ec394ea5e938d9a271b70e3f4f033fdfad5e38a2a377cf8bc5289b9a"
    "pt-BR"
  end
  language "ru" do
    sha256 "c357fe0d317d724db7052e2bb77255aecb16092232f2674bd9b4bc7337ad53e4"
    "ru"
  end
  language "uk" do
    sha256 "bdea4c6082c4383bd6b49e2b6f061ec5400c57d2eb4f6e33046b476f67527af2"
    "uk"
  end
  language "zh-TW" do
    sha256 "f0e6284f86312c19c13482aa553b5d791afc9bbb4c8bb5a600ae921304c75984"
    "zh-TW"
  end
  language "zh" do
    sha256 "d21d476493df2f3710fffebe714768d47937b7a3c115a9567b1e18351dde3a0e"
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
  depends_on macos: ">= :catalina"

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

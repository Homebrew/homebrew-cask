cask "firefox@nightly" do
  version "157.0a1,2026-09-04-09-20-11"

  language "ca" do
    sha256 "c612a42848721850d8d69e264afb0e2eaca6c22bf0de3e3689e049413c8042bc"
    "ca"
  end
  language "cs" do
    sha256 "222f8d864d44c556a8251688b0f8ea93621df98792a660c86c84f236eed93db1"
    "cs"
  end
  language "de" do
    sha256 "f6e81d6472faba617be9a28ae51d23a89aed976f90eaf1389b14d4b83a1e1da5"
    "de"
  end
  language "en-CA" do
    sha256 "a7260c0d12d6389c68d09b2fe876325072a48df6ce78e8b5de6f48d8d3511e62"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fe710b83a5ad5f64d7832996f4e928bd197df23b958dbd1f8e89fd2277aa3e1d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b1039c25bf6b2c432bda7c739ad7448a58db93d9ca4871a2d4e4bc239145083b"
    "en-US"
  end
  language "es" do
    sha256 "ea1be68c3cada269bcb47835c6b17cfaf3b39cb27717da008f04db6cc4b260ae"
    "es-ES"
  end
  language "fr" do
    sha256 "7144eb2c22ccb9baa79143c21960fa47f574d8c49a6df9db6b70ab877bfb62b3"
    "fr"
  end
  language "it" do
    sha256 "e6ee835d464dfab44ad0e281840d825d6bfa8d2f12bbd64c833d0ddc64c5c995"
    "it"
  end
  language "ja" do
    sha256 "8884521f78219a1a1689f0fce113d43908907d11f373d1db5a086bfe2c31cee8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f86a37324d86ebe18e877d45387b09d160342b70441ef89d74ba3789ad6d4b76"
    "ko"
  end
  language "nl" do
    sha256 "e781f595b981e716578481367dabffe1b1279b6e72bef67b5b27ef59065766de"
    "nl"
  end
  language "pt-BR" do
    sha256 "69704d3255189c0092c5fd1326d695bf3266881bce10cb6d2d47736d8c90cf7b"
    "pt-BR"
  end
  language "ru" do
    sha256 "ab4bc1445f58a0f130e441b78c29ee3716e1d7bad109a704ec957f0e05191aab"
    "ru"
  end
  language "uk" do
    sha256 "12be58dc606994eaad9f5adc68f3bdee12cded253fad26f62de3ce020f2ca020"
    "uk"
  end
  language "zh-TW" do
    sha256 "2c5ae7feda1b39b6ae4ae8c1a842e05d065bf6970993ec70d55d764477036b05"
    "zh-TW"
  end
  language "zh" do
    sha256 "9c7a89c5ac10675db325f539b61922eb3ecd09fb39aaf4617df33f8f41c86393"
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

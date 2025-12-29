cask "firefox@nightly" do
  version "148.0a1,2025-12-28-21-29-36"

  language "ca" do
    sha256 "36322824f35c9cb40f9ee91652f455e2d76fae44ce001fefee4f7e554c750852"
    "ca"
  end
  language "cs" do
    sha256 "1b108942d9384f8928e8fb6d18dde404a4d3739325ffb4a87b4d66bfa80b312b"
    "cs"
  end
  language "de" do
    sha256 "fad168affdcf92062bb339829f9cf4a75a6dbe100e3d390fa6cb5652935c008a"
    "de"
  end
  language "en-CA" do
    sha256 "7ccf0048445243c67ed9a2729586cc553be7cc2739e090b4160728dfe29a00c3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "690b300d61956455d1c3b0945ffca2ada42755c6b0560031ee224c9a43ebbaf0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5f1c76e2c7c1384ed96f3dace5fcd58a522212542803000b30c5e68159397e05"
    "en-US"
  end
  language "es" do
    sha256 "125f1411de27375b643d3f533ec441157e4ae65542026162871b75f6702adfcd"
    "es-ES"
  end
  language "fr" do
    sha256 "4862c622facc9925e0a459b6226bfa611aceb674d78f1f01428d1e0c797ff2bd"
    "fr"
  end
  language "it" do
    sha256 "bb6bb3a1988399f4644a757f1e0315b5ecd90c0941dd75ba71ac33c455f38ff5"
    "it"
  end
  language "ja" do
    sha256 "106762a1d363e6a42fdfbbfd4188f4514528935361f17a76648d38bc79390a1a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "09367ce8a342e3ae0a22257d90696fe48cf4ac1388c17efeae9d0a5d817d46af"
    "ko"
  end
  language "nl" do
    sha256 "c02efdc7e474b13b6ab57e4b86e51343cc96905bdfc32f207a37c9a4a5c9049b"
    "nl"
  end
  language "pt-BR" do
    sha256 "6715b87bb2fe575b31b862bec64414bb717ff49dc6c398c158a0f3b775c5f73d"
    "pt-BR"
  end
  language "ru" do
    sha256 "a03cbbb8c4a929dffcee544fff0467e932070f46b9cf0f28363da7a8df36ab59"
    "ru"
  end
  language "uk" do
    sha256 "f8d508de6caccc67ebcc999ccaa42b8a82b8f5c3eab5fad1d2e2a6635e67d98c"
    "uk"
  end
  language "zh-TW" do
    sha256 "6d008e81ecab915ab0216842b1a5572f8873aa1056a031d69a27522b5b37f782"
    "zh-TW"
  end
  language "zh" do
    sha256 "97aec0c3d5c41e09409eec7acc21c0a49072ccf1a8af0bde17c98733ccf31a61"
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

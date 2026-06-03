cask "firefox@nightly" do
  version "153.0a1,2026-06-03-09-25-39"

  language "ca" do
    sha256 "6ade0155afbe1f193a4c97417acf5cbe984a91e08b5a6fb0cd51d4b6a5aae7a2"
    "ca"
  end
  language "cs" do
    sha256 "5c17dfddc65b08436c1921ff53fdb83c6f82605f2ad16a75e426dc7c370b7240"
    "cs"
  end
  language "de" do
    sha256 "893fa4e705c10f682e42ba7194682227df84bb6fed16def8b7ca3a4cce43e388"
    "de"
  end
  language "en-CA" do
    sha256 "4ec7a9c524509fa740923abe3a1ecba6cfe6273c3c473358a4d555d588293b50"
    "en-CA"
  end
  language "en-GB" do
    sha256 "26903d8cb4fd84adad7d226553856b089fabb1017f881ca434b44226f6a6f1d4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b6ed7d4090e4a5abcd6a29af248ac652ba2344fc387c7e2870cb2b5b1d34ec95"
    "en-US"
  end
  language "es" do
    sha256 "7d93a5f2df53d303ea0e6f7f81f8d2cc06feb6e1c6444ebe439336163667d8f4"
    "es-ES"
  end
  language "fr" do
    sha256 "d64b21bcedb13a5ae93abeec7302dfe177720c7d0e1bc3ebe97d963e240cfba9"
    "fr"
  end
  language "it" do
    sha256 "df56553f6007bd80f365e7e10fa15eb49eee31c5f70c66c02db32b9273db88af"
    "it"
  end
  language "ja" do
    sha256 "3e32b9f0e2d5dba349de4cc51a684994b9a87c1e189f9f9dd0bc874a72ff63f6"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c0b5fdb175033cabd9f05ff4996a2ec559693d430d428265d5fdf1caa4c2f9bf"
    "ko"
  end
  language "nl" do
    sha256 "13fde3020bd3f973cf4ab2533cb346ada4bb557943d8e9f6a446bcf525c0495e"
    "nl"
  end
  language "pt-BR" do
    sha256 "d756d6d89a41eecfd0166e67e796c277b2d783ae23bdd032ec59a1a5679273c5"
    "pt-BR"
  end
  language "ru" do
    sha256 "0d31919242e0fda3977f1027e479d9836c7dd3ea4160a836235a203ae53e8465"
    "ru"
  end
  language "uk" do
    sha256 "7cf664e916fde27cee001cdcdbf860c25a2ecacf35e62909c164483b3dd73dae"
    "uk"
  end
  language "zh-TW" do
    sha256 "91d93897bceac31648f9ead6327b0754d8cc9328bcbd7ecb1a5fd6f1ce11220c"
    "zh-TW"
  end
  language "zh" do
    sha256 "a21b799bc4304e9714bb86a1c844aa7aad40f24443bbe46d30df6cb9bf6d53f8"
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

cask "firefox@nightly" do
  version "161.0a1,2026-11-03-21-43-47"

  language "ca" do
    sha256 "a54df719e61608a2b43678b25aafd2aa7f6c3f4fbc63958e0b3a10dd521b9bc1"
    "ca"
  end
  language "cs" do
    sha256 "ab96d6b6d847c71b60a18be353d744094007c6b035b06942848457daaa06cace"
    "cs"
  end
  language "de" do
    sha256 "daf9ac5e64cae0b39f357ac5a65a65c217021e19cfd2336460cc7c87a6531b82"
    "de"
  end
  language "en-CA" do
    sha256 "c196b9abf63bffd407b0dd18fead8eace901dc874d042598784ea3585dbe9e37"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ec53f5fc728f0169679688a500db3cbad8792b73744d3b2a03c4f1e5921a3f91"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1f0237bdaea105ee7d46216ea8c2c9ac8907163182850e6c9cc1d74b38eb116d"
    "en-US"
  end
  language "es" do
    sha256 "7411594f076b72725c461c602691328bcc7800ae30a48afdf6f08259cffa29a0"
    "es-ES"
  end
  language "fr" do
    sha256 "cb6a01de37611663d54ef45f532ede39d7a0bfcdc99f10065ee6a10647f098f6"
    "fr"
  end
  language "it" do
    sha256 "0b8618cdd0bb30a2f2211de7d4b78070a82eee7bbeb2a10701e3fde193796ead"
    "it"
  end
  language "ja" do
    sha256 "f74fd8a6e024633e3a1d277b6f0f1770a792310e27f52454a7a00767054505f5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "cfaf8431717646e613c646290c958125df9504eab51ae5f4609e51cb1720d16a"
    "ko"
  end
  language "nl" do
    sha256 "3542bfd8881dd31875de18e3b36bf67b2314230c7eca9ed3480a5b5d2ce98f92"
    "nl"
  end
  language "pt-BR" do
    sha256 "ca8ff60e3bb43a84c4c10087b27d42d7d449b584320703d4b494355f94c5d324"
    "pt-BR"
  end
  language "ru" do
    sha256 "ec64915f1e9981e792862e88754f581aed3a18f81c768a4f9d3604ec5ce9a993"
    "ru"
  end
  language "uk" do
    sha256 "1ff70672a46c3f7394cabf905efdfe88265254a3622ad7c6a10793d95f4c9972"
    "uk"
  end
  language "zh-TW" do
    sha256 "45910efd705ee5d46dc1326df38be1355b0771a959a436ebe3bbab6952c9c9c7"
    "zh-TW"
  end
  language "zh" do
    sha256 "fbc888a655f29170d37eccc89e8884e5abc1cd02beb67d25787c67b04aaf6ff6"
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

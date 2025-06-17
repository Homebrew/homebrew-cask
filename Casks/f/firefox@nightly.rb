cask "firefox@nightly" do
  version "141.0a1,2025-06-17-09-26-39"

  language "ca" do
    sha256 "b20add93e36d51f3967c523412134b69b37774580a4293685dbb295509614b0b"
    "ca"
  end
  language "cs" do
    sha256 "2ef39cae0047542a0bb0b52cca91ad8232b6ec9898d5da60125de9482f2f519b"
    "cs"
  end
  language "de" do
    sha256 "25366fa95110a6672756ed6254f0cfb079eba3b7d75e7c757344d3b36fde7b1a"
    "de"
  end
  language "en-CA" do
    sha256 "0e1f74e0fa08a3ff259d0474919a633ac09026a505f00e65e8b3c3d3376ae334"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e0a0482839d4cb161db203728aabdf47def74fc6ffd27f2f0b0f97559c3d2c01"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a4e7968ca9a3147fdcb5520e735ec74a377d2ea1990a8130175000cec3a18a8f"
    "en-US"
  end
  language "es" do
    sha256 "6df4317cdd7108aa8655ec562f5d2f1d148319051212f73dae3371ebb74277d7"
    "es-ES"
  end
  language "fr" do
    sha256 "4a7216fe1fa356af0f5df283ca6d05e7f39935b97359bfabd40255a90d0cfbbd"
    "fr"
  end
  language "it" do
    sha256 "a06e5977fcca0c3cfa9782d9301d34fc0709a28976a836f1068bf0ad0f42d922"
    "it"
  end
  language "ja" do
    sha256 "c809cf28d16dad2cf3be6d80a2e7dc87a1fc65c7dd67466dc8898beeb5ce83ab"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "db4f1b727df8cb8f958ac835ce7469e42a0f95a04cd60985edb1b80d3044d846"
    "ko"
  end
  language "nl" do
    sha256 "a3009093088628124f5ec836b773fd10b4d118a7ca66259b67fccaebd73510c9"
    "nl"
  end
  language "pt-BR" do
    sha256 "7309af7b0863a3937d5469affefc77d46fa3f83aca3ea1f39b8833147304da2c"
    "pt-BR"
  end
  language "ru" do
    sha256 "1f8a39d43b505177b16f369824db13f843204cf266724ee88a3f43cd97f4f3f9"
    "ru"
  end
  language "uk" do
    sha256 "614994b714ea8c3ba7c12116f0546c47e9514011a831a4ae99abf388b6717238"
    "uk"
  end
  language "zh-TW" do
    sha256 "577d91fb2796dc2a57d3e2845d8e120ec051ee75e189577e5a78a920e20334e4"
    "zh-TW"
  end
  language "zh" do
    sha256 "2df85152868cc0ce437e1ee622206ee7eaaeb6545084cdd7ded62bb6ba75a053"
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

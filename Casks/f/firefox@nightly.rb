cask "firefox@nightly" do
  version "142.0a1,2025-06-29-09-18-33"

  language "ca" do
    sha256 "12aa68f33995b8a528a434bd0f4de415b9267a4461efe39dddb794cccbfc6df2"
    "ca"
  end
  language "cs" do
    sha256 "7e3cf15a617da0764aef2ae7016e3b394ff32b6c4809229d12da007aa192bea6"
    "cs"
  end
  language "de" do
    sha256 "6e697e2fd625996fe979962df044474a55359034f8ce8616f8cd2f736cf48e76"
    "de"
  end
  language "en-CA" do
    sha256 "1e531ef6e6808e6f008648cac80e8ab459eca46101d3ff498ddea5475bcf7fb9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c14cce83e5837b9027f30ef748987fe9e4418244dc6aeee465bebd2bbd4df468"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f232ebd8a3e5f7e8873966a33e7325a438e949a791164a71db0e8ba1c79e0569"
    "en-US"
  end
  language "es" do
    sha256 "eacbded61c985b538f9389831d1ef367b4623b255f2be1de9f17784dcab42b69"
    "es-ES"
  end
  language "fr" do
    sha256 "15d5a8920048397b983c98d0efc57555520eb133d9849c20b660c6320416add9"
    "fr"
  end
  language "it" do
    sha256 "d8bed75b2fe0f4dec87dac15a36e39988ec76bf72ee97676d2a6d14c02f38375"
    "it"
  end
  language "ja" do
    sha256 "ef8ff4f36c9a5dd0ff138d5780a5515101c0a304891172c16126eb12328912dc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fd91460a350af398b90ca151c8fdd1c0b51fecb5cbc1f6529ee30cf6b4ad5529"
    "ko"
  end
  language "nl" do
    sha256 "c8240fc329ed7c6f1ab5a374491fed8d09c88cb323f91df8eeef5c1d2c795993"
    "nl"
  end
  language "pt-BR" do
    sha256 "5195e16a09928afe2050a3dd57e9bd068d5790854261b302725357bcdf378fac"
    "pt-BR"
  end
  language "ru" do
    sha256 "e080bc7e200d7ad15533d35e11649c32cef6760d5fd2a7aaf5e19b7b7dc849e2"
    "ru"
  end
  language "uk" do
    sha256 "d737afbb786abb66514211bf2c42393bb07e766ebc1d9b51519d976624d429df"
    "uk"
  end
  language "zh-TW" do
    sha256 "99070ef29b338131327a011279126865483697a833dafa9a556b96294f4ab88e"
    "zh-TW"
  end
  language "zh" do
    sha256 "a4dd94e291d183cd35bad46687003ed3401a8587f9f41e74bf84359f04523112"
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

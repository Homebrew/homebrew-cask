cask "firefox@nightly" do
  version "150.0a1,2026-03-17-09-19-56"

  language "ca" do
    sha256 "93fbbe8cce2cf6d96468bed78193010f41853820e35a236b0a937cafe17e48b7"
    "ca"
  end
  language "cs" do
    sha256 "146d8de9e33b9e5a18f733f7b066012bc5ee5dedcd5fc973d6171397b8bc3a03"
    "cs"
  end
  language "de" do
    sha256 "cec57018a3a71774e091d24bd68aaca704a95da9199d209f5eb779e2c43af4a4"
    "de"
  end
  language "en-CA" do
    sha256 "7ca18ba20faf68df7872d93849e84a517bea3e050170c65a63d816fc551e3d6a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a29b3c9d80ba91fce650df5ece635b77f81cf450013c37c55ffd9a9b950db560"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8ebeb059e48a88237569812c9abab95d761572262e9668e3dcb4cadfb9aeb768"
    "en-US"
  end
  language "es" do
    sha256 "a93f0125c1890ee4b9428cdc5ecc5129dbb272bf7c9ce5c2157eecec0ab9b7d3"
    "es-ES"
  end
  language "fr" do
    sha256 "225645e2304de56e5bf391f03358af0465894af5edea967ad224d3cb819af1e3"
    "fr"
  end
  language "it" do
    sha256 "5b91aae683111ff9978d96a21231dc089fb70288eeb332193e71edda97d1c8c7"
    "it"
  end
  language "ja" do
    sha256 "5c5dad8c7c670e33b96176a0c6c164dc931b3f173776c4b815966d921abb7049"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "44de63ed6607d1630334f2563b14940d83607c7c777da5ba23375d5d60da913b"
    "ko"
  end
  language "nl" do
    sha256 "ff89555ab8c68d4d3b3b1bf1339c843d125b04882090b5da26944d7fb27b42f7"
    "nl"
  end
  language "pt-BR" do
    sha256 "a7d7ebc01e44f436c86d6d5fb9dae289dcb3454b54975ee8ae0387a69e2c0968"
    "pt-BR"
  end
  language "ru" do
    sha256 "97596e757b089e8185e660fe6ed9aaab5578b34fbab74a46d00133a6b9ef4e67"
    "ru"
  end
  language "uk" do
    sha256 "1eea7d639902ba4e1dce2cfafbb0f06bb93f1e5039f9314b6557077a40528540"
    "uk"
  end
  language "zh-TW" do
    sha256 "aa16393d95a8bd698dc5930c58ae2b75bb6f71317433001b0ffc8b73642880c0"
    "zh-TW"
  end
  language "zh" do
    sha256 "2819a07fccc0aaaff9c8f57988dca8e2693c62b3ed2b1286ed4f2912467b370d"
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

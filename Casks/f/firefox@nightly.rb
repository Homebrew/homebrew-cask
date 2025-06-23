cask "firefox@nightly" do
  version "141.0a1,2025-06-22-21-56-48"

  language "ca" do
    sha256 "ffed6744ce47a204f19bdaa5849f57780d554564563d95ec13fd2e3e5951b7e4"
    "ca"
  end
  language "cs" do
    sha256 "ad439747b5960715c773cbd7fd2600e3a0933e7eab4041993fd47b06eac371be"
    "cs"
  end
  language "de" do
    sha256 "6e872b17d384e088076e94c2d163ed0d983ee931f88a1abd43c9d83dee970a08"
    "de"
  end
  language "en-CA" do
    sha256 "86a9d223503be49c5cc966fef623efbf31acfaee751330643d1be256714e4fa7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bcdc73fd2fd46f649c80e14ed95ebfcbc0f4eab3512e3d1939cb0e8c3e742777"
    "en-GB"
  end
  language "en", default: true do
    sha256 "17128dc53199a319bbf04fe98941aa197f6d157530bee09bb9ad30e19c33feef"
    "en-US"
  end
  language "es" do
    sha256 "e81650fe171d4e6e6fa0676ede11fc524b1c58443d341bd04d2124ecebd65199"
    "es-ES"
  end
  language "fr" do
    sha256 "63c3821bd8cf41ddfe1d1d05935bcfe175437b4291dc86995f98c49e760e50c8"
    "fr"
  end
  language "it" do
    sha256 "a8a53d1fbca44dd9469ac49f1334372a137c0339761a4bb327f5cd82ae31cb18"
    "it"
  end
  language "ja" do
    sha256 "af8bfc32683e4ffbcce33204b03ec1cd66d586e3068ba29f7925ea52d93479df"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ded58b11f0fbdf38a5cf0bf5aada57e00e6bcc18679c31030c0f3a290a09cdac"
    "ko"
  end
  language "nl" do
    sha256 "b5f6d530c88c6612108c76bd480291de37e10af76215ce3ca875afeecde36522"
    "nl"
  end
  language "pt-BR" do
    sha256 "f4fe484683561e143f2a116303dce7e1b8d21fe3131451db32ce00cf1b3a4485"
    "pt-BR"
  end
  language "ru" do
    sha256 "617d30b003eeca6c8ca9706bde77cd1e84a72292cf6dff685e2c5924a2d500fa"
    "ru"
  end
  language "uk" do
    sha256 "d8dbfcee2a59bfa71fc33a4a042961b72c2739b7ece5482c9d6ec78f01b8db5b"
    "uk"
  end
  language "zh-TW" do
    sha256 "d0e62de13b9ecc56edbdc14dd501456514f083699be135a413f2db20576aac0a"
    "zh-TW"
  end
  language "zh" do
    sha256 "a33dfa7b9319ba9bdf388ad1825a65414665af639ed83666f8adf853d203feee"
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

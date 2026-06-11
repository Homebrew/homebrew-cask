cask "firefox@nightly" do
  version "153.0a1,2026-06-11-08-27-34"

  language "ca" do
    sha256 "874e2b9a2edede1b811066e5aa78c1856c937ac6c00186e9f9ae4e70c1235306"
    "ca"
  end
  language "cs" do
    sha256 "bebd19f09933effb0519a9cd4ce6931eb5ce97e432666c85091c0dfe1695eed4"
    "cs"
  end
  language "de" do
    sha256 "099375abcfc82c15089261b82e5bbcefa174d1d52bf90f07c99addd4df1247ef"
    "de"
  end
  language "en-CA" do
    sha256 "ad4ce08154f2e17449f7218d4cf1460d822d53137dbbb2f76f9d6a331df0a40c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "db3d064ee8b33f950d6ac4f8bf78d7b788ee6f83875af66f99176bbcd7b29026"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7684f5edf8f46952e539997c20e564bf25e8b871dd32ec97e65f9d5ea8e26b37"
    "en-US"
  end
  language "es" do
    sha256 "1364b9347c10de32517ceaab0b2b17bd7a67d7897941dafe9264375d6bd9242d"
    "es-ES"
  end
  language "fr" do
    sha256 "2b01fe24ca2537324a9eaf0239c66a2e285f39597e4e74a2e8a4cc186b4e92b2"
    "fr"
  end
  language "it" do
    sha256 "1175293d8f4704d69015a9895558e9ad41cd14ad82a989da6e230640282ea358"
    "it"
  end
  language "ja" do
    sha256 "3e9da9194ee57e3a0f64181df329864b3e46e5d176efbd0da30291fbaedd99ff"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9100c367448c1dcf5a0ac3a649f1d1cfe425b71de6656de501cab64bf03bfbc6"
    "ko"
  end
  language "nl" do
    sha256 "91ddf123b6ca5deb5c3460a0f8ba93fc7744ca259244d7499f09da47bb8817cf"
    "nl"
  end
  language "pt-BR" do
    sha256 "26abd413df6999adb0e3df26152e5d4817ab45f845685b7fb0ad800c9cef8fdd"
    "pt-BR"
  end
  language "ru" do
    sha256 "476108f20e99a8987586c35cf46f57d74fe4ac9f3d773e7c3f3d77ad4cd3ea76"
    "ru"
  end
  language "uk" do
    sha256 "5aebb1ac041a84a100c54fdfd6872ad59fe14b9587c45f0cb19b6904109e39c9"
    "uk"
  end
  language "zh-TW" do
    sha256 "0c82119b600e0690685f21f3cafbb7814cd8fc852db2790b3a29fb12227c1745"
    "zh-TW"
  end
  language "zh" do
    sha256 "cc818d8310fff3ab4ce540755be36b354673cda58a7708ab05a5395e56f11833"
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

cask "firefox@nightly" do
  version "141.0a1,2025-05-29-03-34-04"

  language "ca" do
    sha256 "4403e7b6d72c8026886f4ea948bac59a36b82828e1a9e72c2ca8af34c5f6e64e"
    "ca"
  end
  language "cs" do
    sha256 "1934e6708e2af24219b311410c35dd88e9ffe7be23e2830487af22332f03f2b3"
    "cs"
  end
  language "de" do
    sha256 "afafe94bf05c9a42b7e56985e01c61c241d9ad980465f64d08988cf887213131"
    "de"
  end
  language "en-CA" do
    sha256 "1772ae802269cdfe15a7ac0bbfbefd65f6b0c77e8d824b3f29de2ca9c2a4ebb7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fc06dfbb55192f85de4cec558c4c4a152ec357ef6b5c4e863aac5c4390fc9ade"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a0577262fe937abbf82ef77b011b93eae06699a2788682ef2e9bdf25e3d21cf0"
    "en-US"
  end
  language "es" do
    sha256 "7ec71ec17fe61af637a187db71b2e656d7d6903aeab612e931dc260975b003cf"
    "es-ES"
  end
  language "fr" do
    sha256 "bf91f0af060b658fd1cd083133066e90469882634869028c2e11c1acf909dd98"
    "fr"
  end
  language "it" do
    sha256 "47f82988149438673efb152f6e8913bd000026d2755c75ed19d68adebab726bc"
    "it"
  end
  language "ja" do
    sha256 "e7376eeb85fd51997ebe076110cd8b49505144980c6a7eb04534c3baec25811f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5096f77b1c8799c7c409650015b24563ef9d08a145562beeb8b91dd56ee2188a"
    "ko"
  end
  language "nl" do
    sha256 "5fb2271c5a11f3da8a3f162f5bcba6f333408bb92d67274d70e2128aaea1e169"
    "nl"
  end
  language "pt-BR" do
    sha256 "4718727efd0e0430f5897b1fea732e8bfff85056c719ae4583f10c87ddaffe37"
    "pt-BR"
  end
  language "ru" do
    sha256 "d6e83f32d6e1ad25148f0bb9534ea5fd9074ced4f3d0e5a34e3ad5a69a4a4a15"
    "ru"
  end
  language "uk" do
    sha256 "50c61f08bfbc8601cffdd20b9d3648c136159bfe43ea91d79c5220e3d7df98df"
    "uk"
  end
  language "zh-TW" do
    sha256 "75765c2a7ebc4d52c95653130b07ed54cb2ea57ba72581f082609aec7d7dc39c"
    "zh-TW"
  end
  language "zh" do
    sha256 "bd1f2a0edb0acbb53ccce147f6a0ed75dd3ab26c46443c343b23224b8ee3ff99"
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

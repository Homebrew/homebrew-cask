cask "firefox@nightly" do
  version "140.0a1,2025-05-20-21-36-29"

  language "ca" do
    sha256 "5f73fd722c7fc23640859d09eebd056a835b4bc02081d0b1bcd844c559bfc1ff"
    "ca"
  end
  language "cs" do
    sha256 "d20608583a3bda97b9ef1806c939dee1bb9c8ad9ae3708580291ed5984d9eda5"
    "cs"
  end
  language "de" do
    sha256 "fd4a87591fc812d0187e71da0d46ed70159137162aa15802d59716fa31806661"
    "de"
  end
  language "en-CA" do
    sha256 "995b7bb95a1312a205bb122038dfdd7bd3f38b15cdb27fdccb04039cf8f288cb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "eeed79d49e22d805add0573e18589b6a1a71a1d43b1b54b52af3ea5abf1eaa51"
    "en-GB"
  end
  language "en", default: true do
    sha256 "57d9d071b311d1581420e0d108d26f1f780b84862972097869d233d2dac1e746"
    "en-US"
  end
  language "es" do
    sha256 "083c16bd9cf5e1e78ee112c3b4a2198e5182e35608cd1a6fc8a5ded58cb2d193"
    "es-ES"
  end
  language "fr" do
    sha256 "fd76d1ee53be4ae567683ad855dd1ab5fa182725c6d947ba16940d332063e2bf"
    "fr"
  end
  language "it" do
    sha256 "7eb0dc20df647c57dea0453de365755e008ca0d08374df59e64961a9c47e0dfb"
    "it"
  end
  language "ja" do
    sha256 "77b7593defb5b950e924aa523f757cff974df92cb3b710cb84edeaa560426e4f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "60ca1c17a508b248fcec0d8d19511120a06e6c2a6c8a7d2ccebca38aa6d1c1cb"
    "ko"
  end
  language "nl" do
    sha256 "bbf3cc0a746fcce0c95036209bf91503ec71abf02543bc772cde764b3a736c40"
    "nl"
  end
  language "pt-BR" do
    sha256 "ac1a89b0c1f5fb3d5b951e35675c2e47e27e68a09b6e0a48d8dfee9319aa764d"
    "pt-BR"
  end
  language "ru" do
    sha256 "3ecde0e08ef9b489e58a8da741883efdc729cf115bbded1763a05e5075920871"
    "ru"
  end
  language "uk" do
    sha256 "f3ca1ebc87a3b38292597c61688583fe9f0888b51645673c39a1bde3b9c92985"
    "uk"
  end
  language "zh-TW" do
    sha256 "a7d466f3dc51d3b09b9dd11017276ce6b227b1df24c300c3f6a2c40b1de92e0e"
    "zh-TW"
  end
  language "zh" do
    sha256 "e91b8bd97b1b339142f4273f92b3eb078f79579d16534c9005b266e72a2400b3"
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

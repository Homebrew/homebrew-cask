cask "firefox@nightly" do
  version "144.0a1,2025-09-06-09-19-26"

  language "ca" do
    sha256 "17a89ab7db1c37e7c3b14e01398b44f51fe5dbeac5e7cd70828a805d71628c9f"
    "ca"
  end
  language "cs" do
    sha256 "62a11e06e854385943b8d42d46b1595d6205596008cbb12256c51742ddcdfe20"
    "cs"
  end
  language "de" do
    sha256 "cad6bd1bcb9ef300461dcf05a37feffbe8ce50875b1051a5b47b1445a25f13a8"
    "de"
  end
  language "en-CA" do
    sha256 "7a605987c4f676a4d64d47f93f2b50cd3bc556c9d0d85cb506f6eaa1f0f8da32"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4779cb93cf6de00e9465e6c88446d38f0a774dcdf117fe4f0e972b166375140e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9a08d52e0974e0371451bbe15c73733e9e6b2d00585b15fbd706c38410cadc95"
    "en-US"
  end
  language "es" do
    sha256 "89140da60a883cc0feb72bdf0b563d9de1ce816e4e471efef6c9b163e2ce3241"
    "es-ES"
  end
  language "fr" do
    sha256 "2af60d8fd7a6452609fba73002df8b3de80d4d31d959dfac3e646adebf35adb9"
    "fr"
  end
  language "it" do
    sha256 "f6032f93f9dd6fd3dec8fcf4a5786ebdc701eb2d005aac5aa630ea503bb1afdd"
    "it"
  end
  language "ja" do
    sha256 "edcc4903d9e30521cbcbbef918ee44d51c0c367a5560c21e596803904a416327"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bcb82f59685698f66e0095e7944a08457b1e61288150bcce88c334abf1179690"
    "ko"
  end
  language "nl" do
    sha256 "36dbd92c6b328689af784023f7e945d18b74f87a2a5d244c5d4fd8927441a596"
    "nl"
  end
  language "pt-BR" do
    sha256 "31e4dd3c7c9a442e10ac89f0f8b064539ba910a827345549aa291428ebf6f36a"
    "pt-BR"
  end
  language "ru" do
    sha256 "f5633af4ceb23f53797cf86ebc5c1c0ddd6146ccbe6811941c5a8b4f71915f94"
    "ru"
  end
  language "uk" do
    sha256 "d793fc32087e130f1615e5feb6aecebc7403e26545c4e0149262dc06f9c4333d"
    "uk"
  end
  language "zh-TW" do
    sha256 "a3d7d5bc80590c08963d96ca14d7f2a27e12c9ccc13191bdae75ddfaa76eab30"
    "zh-TW"
  end
  language "zh" do
    sha256 "0491b3c0d11d724ab5aff4be4bc1b36906b641d7c4ab3442f564df1ef11a4e95"
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

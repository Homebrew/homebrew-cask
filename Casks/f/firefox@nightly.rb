cask "firefox@nightly" do
  version "152.0a1,2026-05-13-09-42-09"

  language "ca" do
    sha256 "62b624da843d0738296551e529ca41b00cdd84ee3ccee74b6ad1a75667564742"
    "ca"
  end
  language "cs" do
    sha256 "7b701a4da6a0701bad2376ce4168ce6645b42c60a8bed3b02f8fe4c5d80acb17"
    "cs"
  end
  language "de" do
    sha256 "2f18313441c42cd600d88cd54e63253e5f868c880b80cbf5103a1b11d914a44b"
    "de"
  end
  language "en-CA" do
    sha256 "dde604ce327f6d01b1cefa951d3b0d5011c4c0195ad3463400783ff50ec9b9d2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "897db22e55328afc7e3b214154630b2afb099b6f4183e7dd2f0aaa0982931e01"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0ad5eae49fd5e4364da3ea2863172ead456709b8c154f09af770a539d26eb577"
    "en-US"
  end
  language "es" do
    sha256 "7c79ed35631312be613ced90d8a4038d186b337a234d6df80135be36532c92e4"
    "es-ES"
  end
  language "fr" do
    sha256 "969b963ae53a3ad63846cd2ed6dcc2cd6c73ac552863956a2b2e6602489131f8"
    "fr"
  end
  language "it" do
    sha256 "992cf1727b03bc11b3c97ccbce3a9368fc37c089d966449194f101a261297e9e"
    "it"
  end
  language "ja" do
    sha256 "d8295cc0b6256613288dee0f781c9e619c8f82ecdc6099609e56c5f4f10ec1f6"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6d5ee97b11104673970e8dd5ea001c4361190cdffce22e207e7f37d4e78994a3"
    "ko"
  end
  language "nl" do
    sha256 "b9b71f93034e620e3bf3894729d47639ea512a339d716f090f3bb302749af55e"
    "nl"
  end
  language "pt-BR" do
    sha256 "d70ad8f19e4e9938486d375a65473d1f2390ecbf5f5030368f4e8c1f02a9e1ad"
    "pt-BR"
  end
  language "ru" do
    sha256 "606307bfd75b7ce7a744c3c2ff5a4aae080aba73ae4ab5943e18092782204700"
    "ru"
  end
  language "uk" do
    sha256 "a3986d0f755c5b1d30a2b8af33f6e75bc8942f2ea784b51d19b86d2f65e3b89e"
    "uk"
  end
  language "zh-TW" do
    sha256 "5d0e888f974a5e17f11b43613081d1ca6b483a32a5e87436b422b23caa3f942a"
    "zh-TW"
  end
  language "zh" do
    sha256 "5f4114123ec418f910f100393b3687a677584759d9c531355d7f821a509eac36"
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

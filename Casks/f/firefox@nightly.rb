cask "firefox@nightly" do
  version "148.0a1,2026-01-08-21-18-52"

  language "ca" do
    sha256 "6bb7eccd19718af355762938d409db999abda59d48cc968b0e2ac506d17b4abb"
    "ca"
  end
  language "cs" do
    sha256 "1fb26b21d56a2a5c2916b985081246140cca1c26132bcb4d94605b54b4a283ce"
    "cs"
  end
  language "de" do
    sha256 "6bd08f7f5d2d212c691c5bb95fad4aa27f49f1a713003c1a0c7262f334524aa3"
    "de"
  end
  language "en-CA" do
    sha256 "2c0de48b4a5a8b2b0500bafd24a2151e471461632e10da28aec445a52e4f3e9b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c103a06d6a416907a618a9d834b9ca7280d45b292f8fe61fd59e85728269e5ac"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f84715e213277106d9c7f03ec215a5e1c7779eea4aa9422582355112e54ff876"
    "en-US"
  end
  language "es" do
    sha256 "e4682580ee3d9c76c2d126ee2ba3f957c38fb4bfb4635a12130d3e172955d43c"
    "es-ES"
  end
  language "fr" do
    sha256 "63cbb05535337f4d67d1dc8e3de1e9643ba95ad21088c1517669455a0e922b08"
    "fr"
  end
  language "it" do
    sha256 "f9916e508e1e09cd7b2caf24a450c2ec3e9ef7e8977bbd811ea8af8fa2f8d465"
    "it"
  end
  language "ja" do
    sha256 "87ee84f4a211ecb6e499bf196a20b823928ba3ab14b505a733fcd3c151d2755a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "30c07f2667f9964d03ea495d8c0f492e8282c3a114ae04578723cdbce89e776e"
    "ko"
  end
  language "nl" do
    sha256 "a5f47ac429015085aea4b781ede0eb518e1afd6ae6bd1c690e0d4bd00b63ba11"
    "nl"
  end
  language "pt-BR" do
    sha256 "cbf6f8d5bee85bcd66b9667d7d40443be170a4a010c9893b45c987e774abd590"
    "pt-BR"
  end
  language "ru" do
    sha256 "081a725fd080548169fcc9c39ce497efd65acdf299adde9527ab121c1078bf40"
    "ru"
  end
  language "uk" do
    sha256 "7710d1a74b288af37bd91bd985f7ca6dd32120a068d8d3ba065c8d241ecbc76f"
    "uk"
  end
  language "zh-TW" do
    sha256 "ec0e7877f57e41147a831158b4eac9d33134fad418df4fe10e49cc8214eea3d2"
    "zh-TW"
  end
  language "zh" do
    sha256 "0cc658a9fc77a7186491ae2878511f4e90cfdad62ed2d8add2e28c492c3a5aea"
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

cask "firefox@nightly" do
  version "155.0a1,2026-08-07-09-46-15"

  language "ca" do
    sha256 "c128380bcc5008e33b6ffacd096231530eefc0e5d8b4f7b203931e1dd30740c7"
    "ca"
  end
  language "cs" do
    sha256 "7c191f4750e91550014d09df0a60b0a172144f28e0be91c2321662fce2c9c999"
    "cs"
  end
  language "de" do
    sha256 "77535e7c16983c05737f457d9c2771a4c47058d4690344916ace48cdd0cef32e"
    "de"
  end
  language "en-CA" do
    sha256 "aaa4c3187f9a51a9c2be12915c880d91919cdfc6dd166cd3f8ec381cc9e42e40"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e9962461fa22b964204931f71193703f506af59bbd4b38f5559828c92f34e289"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5d03b2fc2e9fadee77c5d7dce500fa0ee050bef4772c3ae75081784ef6fdcf0a"
    "en-US"
  end
  language "es" do
    sha256 "17b338186ec5e49b158908a55e303d481d49cad21c7490504cb757513c66e33a"
    "es-ES"
  end
  language "fr" do
    sha256 "4e2ea967b1743e3fd39bc006f747c77b7b9ed341347a4a298f880c01543909dc"
    "fr"
  end
  language "it" do
    sha256 "92b99d71268a30924d5785bc8f9e0965601640233c15b81b60c66206c9235bfd"
    "it"
  end
  language "ja" do
    sha256 "bec681ee932c50039a4e5aad305169238c656b1bba019b54ddb58726ace40b1e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e0c3d2092ef50748241cf9656698a2a8eaa8948597a6d42f4b2c3cbeb8857735"
    "ko"
  end
  language "nl" do
    sha256 "73242a5700f77cbcd5fb338faacc7d86f10ca65ab7c2d92b80acd55046f01324"
    "nl"
  end
  language "pt-BR" do
    sha256 "d48f2243ea2a9437f81059e17598473a68787caebba2fb6839e6276385cadc16"
    "pt-BR"
  end
  language "ru" do
    sha256 "7565f8aa82d59d3086b30666ed0431da92410def76a5f62ed0a90f4466fe50a1"
    "ru"
  end
  language "uk" do
    sha256 "523a936b51fefef687f59ca52a97025fea0b78f5be17de081389401fd2f9b506"
    "uk"
  end
  language "zh-TW" do
    sha256 "f4e70ec63f07b94ed709c53b8aa27e145292c0b442fc4a3e92dd08dc1335bd36"
    "zh-TW"
  end
  language "zh" do
    sha256 "4fd60d095110915ceb8318594b1495d17e7d014a2cab5002185e379b1ffa63e0"
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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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

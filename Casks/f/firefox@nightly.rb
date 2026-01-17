cask "firefox@nightly" do
  version "149.0a1,2026-01-17-09-12-48"

  language "ca" do
    sha256 "45bef944fc6f451ad6b73be54ec63771514ade0267c665bfe2f60b09f5106182"
    "ca"
  end
  language "cs" do
    sha256 "8e0421fee104175a956979ae461052c9f9fd643563401ff3d573e86567b9711b"
    "cs"
  end
  language "de" do
    sha256 "ac45adc208043c7a67f2c00f1c4be93005519f7f5f192404239bdfd3366d6354"
    "de"
  end
  language "en-CA" do
    sha256 "5958aa62732946b5e6002769622c0959fef3b74da58a5ba3db41fe554224e64b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "03f6bf23137772aac54fbb452692e6749845b0bee37f5ef59457a098ba855d53"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a92ac500e3542f5f841279ef483b144cb565116a18fd80ae9876391fd3fcb46a"
    "en-US"
  end
  language "es" do
    sha256 "fcdc4fece6da61af44b7c75ae7ee87e7a81cc427f5dbcd21e54300ba7a62cad6"
    "es-ES"
  end
  language "fr" do
    sha256 "ec4ecc3254da67a05d689b594b637a3fc694591eac8d8140b249809568bda41a"
    "fr"
  end
  language "it" do
    sha256 "5773f48a999a39a2d33417177f65127e39d7f0529b6391bfd4a59285dd39e617"
    "it"
  end
  language "ja" do
    sha256 "22c8f227755433afbfe48cd29150448ca2da9bf87d1e2c6b0004f458c2deeb14"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a7f08ba084f22a1da1f5d0d9a46d96c8b8fb7df1e429178eee9eb0836c99a4ef"
    "ko"
  end
  language "nl" do
    sha256 "f98f2ed0c6c0b2876e1afbd615fb0b06f0619d2c02069af331fce8068bfafd9a"
    "nl"
  end
  language "pt-BR" do
    sha256 "6c929fbc3f9dc85d817419657d97c24992473efb66cfbf0ecae98e5bd3434ff1"
    "pt-BR"
  end
  language "ru" do
    sha256 "50180bd8073a83a669be7c7eda1e4060a8e04503036d3efaafb6652084f7d8d1"
    "ru"
  end
  language "uk" do
    sha256 "1f74527d330cc1ba1d31d96fc0805550d83f769db15f3ee139871276bde6c7f4"
    "uk"
  end
  language "zh-TW" do
    sha256 "543b65debf4a8a293311978b07a5f07804f17bb9d581903538e3964c181e9a91"
    "zh-TW"
  end
  language "zh" do
    sha256 "de753bd01cea9f67af80900adba9458959942f8aa5abdfb18470fd7b4b3b76d6"
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

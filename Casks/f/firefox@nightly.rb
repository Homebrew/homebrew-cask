cask "firefox@nightly" do
  version "143.0a1,2025-08-12-09-46-05"

  language "ca" do
    sha256 "7e7f70c221bc9f6da6e1e5a0845cdd3c6ee13192091ee939c70e530c907a8a64"
    "ca"
  end
  language "cs" do
    sha256 "098523c8fd2d1a94423d5fb313508b810fd7d76ad828c682357db2f88a058780"
    "cs"
  end
  language "de" do
    sha256 "886a14de121f2f9c8f2054e55c0f69a0dc574035cebae45b2ea326f31a9f8b65"
    "de"
  end
  language "en-CA" do
    sha256 "acf77104ff186a4f779917a81f102feacfb52122a5f8ab538a07364147b4abbe"
    "en-CA"
  end
  language "en-GB" do
    sha256 "365d56538e4342c2fdd285f38e94e58537a1a5562ba9743d72968c9fe5633546"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d8a94b22b2cd435d8a25bbad03fea86757f380363191cf9255eca774e6d35408"
    "en-US"
  end
  language "es" do
    sha256 "1e2da2484ec0810be84ce41d6d5b9a84ce53a1e84127a38a3d756f3b77fc38e2"
    "es-ES"
  end
  language "fr" do
    sha256 "563d1c5e06477cab549d494a8bc4cd71bfd2dd7654299016338e4fb7d50b1d02"
    "fr"
  end
  language "it" do
    sha256 "825d0ee595f05ff44886c8a7d7993f10b87b7a42230ddfbb08ed16210fcd044d"
    "it"
  end
  language "ja" do
    sha256 "c8b44acf6c57d39cfa9f72bfa8ec79a72e6daaeae207daf259ca8dfaff804cb7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e61855b6aedcc9342e0bcff5566eee2423e9113cfa3071d47dc392e1e1dd4d55"
    "ko"
  end
  language "nl" do
    sha256 "99075635ea3a6a6d669cff99620833da92e6755f0b5d71a142692ac0b887dba3"
    "nl"
  end
  language "pt-BR" do
    sha256 "45b68927bf88600fdb3aaa3b9d2e121d9c00a620b37df915587b67d78c31e271"
    "pt-BR"
  end
  language "ru" do
    sha256 "4571209247436b8f0c97d10e529b86275199b5f4496c98e5ea5faaaa9a4f380e"
    "ru"
  end
  language "uk" do
    sha256 "69f6091f7177f11824ddc765fa6586a00a1443dec46e9ca1d17df844cc7c6bf8"
    "uk"
  end
  language "zh-TW" do
    sha256 "d1d295c4196dca576f30a37c285f98fb252576c6dc392b08f609aa3b248a8f33"
    "zh-TW"
  end
  language "zh" do
    sha256 "27044f961550f65aa139ad597f4e398f7c4b8d744f03b0d8567e1e92721b1998"
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

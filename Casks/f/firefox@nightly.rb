cask "firefox@nightly" do
  version "148.0a1,2025-12-10-09-56-35"

  language "ca" do
    sha256 "0397553c2365ce1a5312d58e68463f98b030b3f89f683e93a8a49e11f779f54c"
    "ca"
  end
  language "cs" do
    sha256 "ac42133b04530c6c9ece0ea457c23a10ae0908e88b65fabe0775298077eb73fc"
    "cs"
  end
  language "de" do
    sha256 "0f2df0d8111c1af8a959313e610c0d415f6555dc79e429518d0282e57c360f15"
    "de"
  end
  language "en-CA" do
    sha256 "39f3768c1bf6652dac3815f0c08a89166933ef69a4766169ac3db07a821437d3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f81474cbf24a8e2411c38e971b775af525a67a53d14c31896e4ac6e6ed278b8a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e62ab129ca9c53c3900da9326030cf5aaacce9ec24fa83dd11db62c3ceab3552"
    "en-US"
  end
  language "es" do
    sha256 "143d189f4c7b1e15d89e8357b4450a409ea7f4a465eba6424f6a419eca1a00c5"
    "es-ES"
  end
  language "fr" do
    sha256 "88b76366206531b3b02eda63820e1558b8275d7e8128e3056f38f5669b89dedf"
    "fr"
  end
  language "it" do
    sha256 "7042a929a0ddb7f3ea7a6229a7714c2d954438d7c6b3ca1ddb30b4c5bad2ba8a"
    "it"
  end
  language "ja" do
    sha256 "e227ec7ef8910eb4fd905cd26706b8b5af2526d686bcb069203cb4ddb967d313"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fb9fdb9f93841b533d603b4e46038f4fb3899247b5c7d43cc0dda468524930fe"
    "ko"
  end
  language "nl" do
    sha256 "5a3a0630a86b50894a367b02eef941350e6627f7c586757a84eb6914d9c85fdb"
    "nl"
  end
  language "pt-BR" do
    sha256 "7599bf0f92950cd54621bcf048ca46d7e844068902170a559a946fa5bbceb486"
    "pt-BR"
  end
  language "ru" do
    sha256 "2c9a5dd277bc1dd3515b92e413dec3ae5bcb585d25c3148f78bb0acc69394b40"
    "ru"
  end
  language "uk" do
    sha256 "7b754667663bbd8afb3529f1e01d05a9ef405803916a3d941c0a576946f34d64"
    "uk"
  end
  language "zh-TW" do
    sha256 "8ba2ed215d48237906822e3bbe89d5b3012ae00b7472d68c7935fa94203d16ff"
    "zh-TW"
  end
  language "zh" do
    sha256 "484948c3d914adf795b1ac32bc410adf0c64abfe37bb7518f4307c0fea73870b"
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

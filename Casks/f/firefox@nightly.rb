cask "firefox@nightly" do
  version "155.0a1,2026-08-04-21-29-19"

  language "ca" do
    sha256 "eae0e3e3115f43c6560aa425c820b5d391530c46eb786a58b38b8d26dcb8f301"
    "ca"
  end
  language "cs" do
    sha256 "a97c4073cfc100ea09150f5ab01c61845e5b741b4bc040b65f9a0d8de1685840"
    "cs"
  end
  language "de" do
    sha256 "83b5c9f8aafd5b84fb2ea7b1af7a193adedd37dff6bd8fc79d6eadbbe560057f"
    "de"
  end
  language "en-CA" do
    sha256 "053177576eecdc317e375dfa6f177893dca0b9d0bb69a5949e1a9936d34af106"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b259427693d9ef211e7c1aa41dc663d050841cd4d3672bfc4edbf4020bd618b8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8c2805d4d6d6611f1ecf864d6fc3ae30746aaf41eb3cccad480157ada03e9a3e"
    "en-US"
  end
  language "es" do
    sha256 "a45b4bb0bc6ef0ceaf1b449f0c452273cbdf15eb825c6456c8977b4346580fc9"
    "es-ES"
  end
  language "fr" do
    sha256 "f7674a396fc72781d3c24af458131333f853894ece6473197fd893e58b47f62b"
    "fr"
  end
  language "it" do
    sha256 "af7fcb0a7b2296ff5568e0f75d5bc78171dd147dc909dc56dad7579fff0985b8"
    "it"
  end
  language "ja" do
    sha256 "3e52f5a8501cb871f3f199120d3e859497d3b228e5a61baed294ebdbe2dbf1b8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6e876423682f8d0df5294a9f0096c4dcd9c22936e7068dd54fab2b6d05b84b6c"
    "ko"
  end
  language "nl" do
    sha256 "ab32c6c709a383962b0652e05670ebc4c7ac675ea21be3e1cdef3f338aad87dd"
    "nl"
  end
  language "pt-BR" do
    sha256 "e7dc6eed5026fa8bb97f69238185bb5693157583ece61cc4711c52e7a7f53edf"
    "pt-BR"
  end
  language "ru" do
    sha256 "7ea0123f550e3f377f2c4d4c140dd9e9e51cbecdf3ecce2b472db345f7672c17"
    "ru"
  end
  language "uk" do
    sha256 "8755e2a78cf05fb22432cdf6d924603778bc6154f4d6fb499985ec4208dd4bd9"
    "uk"
  end
  language "zh-TW" do
    sha256 "916208337455066cf0c9687403e11becccc58f4b7f0997228e67c60d5804c011"
    "zh-TW"
  end
  language "zh" do
    sha256 "cc18580c64067d5fa4c82d2017912e6c9bd3df0af26ded563b3280d2b51a1cf4"
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

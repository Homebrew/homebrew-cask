cask "firefox@nightly" do
  version "156.0a1,2026-08-25-21-38-24"

  language "ca" do
    sha256 "5ba0e3b3ead0565625528b66b5bda9edff04ce345b92673916447ff0dd9a594b"
    "ca"
  end
  language "cs" do
    sha256 "b906bbf5a2b81b95343c973c38ca4e6d5631ae90b80dde21d3e61f4d36794601"
    "cs"
  end
  language "de" do
    sha256 "2b9f9a900c79ed6716fc56e62a48b4bcd6dfa887f556f554608abc8469e14c3e"
    "de"
  end
  language "en-CA" do
    sha256 "0425f39cd6c0c386938485fc03ec479b49ba6fac6e6855878f17ba0a7ac3cba6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e2e2ff1e512ff8dc1186aee1c6d182cf4ee3c44051704390dc46d345319ee12f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2e4d09491b731b8cba75ac75a96ae5eb8cd290aa32635f790fb23c0ae62aba81"
    "en-US"
  end
  language "es" do
    sha256 "4b40f47c2e690a43ac889f92914866845dc4d80ebfa16888c9276b2d4105c9c3"
    "es-ES"
  end
  language "fr" do
    sha256 "ca4b1e854136135649da6b9f2bdb55d6cc1849cf0cdc7112b3c9b6317d7fd84c"
    "fr"
  end
  language "it" do
    sha256 "d4413027be68bf6a7196c551930865f54139e49bfafafda49fe7f4004a710f98"
    "it"
  end
  language "ja" do
    sha256 "dfc569bbfdade22bfcd9bdd81b49536ca3296fd2dddc213ef33cf028be111566"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fc8f21280d6027c7bf40e6d53f9e9597ecffee71eb5f8a25418e37217859cd38"
    "ko"
  end
  language "nl" do
    sha256 "c395b6a9f9102000fd8ebb79c410fcb9c48143a92b1a6daa00d2461f7588194d"
    "nl"
  end
  language "pt-BR" do
    sha256 "bbc1af143ac509079106c1305e80f2c8c1d80dcab6d0ac5c1d6baac979f50157"
    "pt-BR"
  end
  language "ru" do
    sha256 "8c641d5a60f65fa219d5b41881edcd155a0eab10a701c29bef8a04fe0f67dbf8"
    "ru"
  end
  language "uk" do
    sha256 "f96fe285ac41ab7a678b7c47e27aead30d2902a50b98d6d0df6707e2c5f3e1e6"
    "uk"
  end
  language "zh-TW" do
    sha256 "e3ef9aab2206d5730f34478073e3ed929b9622005d5c4c147fc43897cf653480"
    "zh-TW"
  end
  language "zh" do
    sha256 "ff87835e86339c191fc907d14d0fd3c52090bab8c3b3eb798485e8a2b63d7b28"
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

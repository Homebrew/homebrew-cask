cask "firefox@nightly" do
  version "142.0a1,2025-06-25-03-43-13"

  language "ca" do
    sha256 "fa8db44d196761a551dd0344b58018a01bcf9a3a3c7ab8234db6c5a8553c4f46"
    "ca"
  end
  language "cs" do
    sha256 "f465959e975462a887e9eb20f0ea7ee81e4d892081e8185e29c2b54bfa42a503"
    "cs"
  end
  language "de" do
    sha256 "901ecc8b5d3a5c1cbbcfd83a3c55efc94285a54ac5891bfb94de6097fd5fe36e"
    "de"
  end
  language "en-CA" do
    sha256 "00a0e8495598ed4adfa4fc0c9e7c803116b630271591ee64345931948c5d4440"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5defa60eb3790a571d35aed962e281ba82359effed924a3855449a31caa4b88f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c530e6b18b6a0a7e1f962e863b7be0da4d9168427b04faa47793856679d0a444"
    "en-US"
  end
  language "es" do
    sha256 "362fcca5265530b305190502499ef0a5e07fffee84a8e81ccbbefc088f423c61"
    "es-ES"
  end
  language "fr" do
    sha256 "3774e9d8d1d089f05d9f3537f67f896d6297aeead595a670d8f455ec5ba003c4"
    "fr"
  end
  language "it" do
    sha256 "7d43bef4ae33d4a5e2477762d0e317418bd04d93d72864bc4cf9ab814fd73c10"
    "it"
  end
  language "ja" do
    sha256 "f15d9bef2111eceb0ba533774eac418ae8e1e02857aae350efa46fba68e1b57e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "52f6ac2f30afcd064ae8894f69063eda67057e06e9028a17775cc3d4d7234a5c"
    "ko"
  end
  language "nl" do
    sha256 "edd33b2d6e84fdef2e85e07d889470bae12ea4305b90aa1abcbaebbdb979065a"
    "nl"
  end
  language "pt-BR" do
    sha256 "6c6d51790a9f7028de365c110d10d8ee99dd73503c419f479a409e67ac513e62"
    "pt-BR"
  end
  language "ru" do
    sha256 "c38d379f186dd6f983195d75c508f119b100b1492bec42ecf27da07db4e95399"
    "ru"
  end
  language "uk" do
    sha256 "96d4ac7e1ee5fe31afa7ac9b24e95a0a898d68f842603920f76bc4db062d4035"
    "uk"
  end
  language "zh-TW" do
    sha256 "83117c38b53f45c8c2e99549bee1d9c2b4a013f6404e9339b368f575a89d2228"
    "zh-TW"
  end
  language "zh" do
    sha256 "f072b5a7a39fd22e31dad7915421855c3981e898d74be334fe3f34a10d5e367f"
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

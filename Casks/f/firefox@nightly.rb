cask "firefox@nightly" do
  version "161.0a1,2026-11-05-05-05-39"

  language "ca" do
    sha256 "98a8f8d0b94fcd99acd9fdac33f54a21e3fb0e4fea4762a8d1984617ff49b1c1"
    "ca"
  end
  language "cs" do
    sha256 "fe00868fb6b873409f56d991bebfc4fad5b133463e60a3e11757da0db5485091"
    "cs"
  end
  language "de" do
    sha256 "aca91235efd9c7ec7cebc37b2331cd62840b0bbcd25b791f3a4132a599941bec"
    "de"
  end
  language "en-CA" do
    sha256 "7a278a2edb1cb89e9703b51759b2f1f41abfd8aaba625be726d593009dd31f71"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ab4ecf081995a4a7db321187f902744ad413cc04d8b8819e79985bb1a139170a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2c8252fab401d2b1a9c776d8db3a3f589de2738e762db6760310dd6ad17879b3"
    "en-US"
  end
  language "es" do
    sha256 "45fc5255aa16fa613ed4aeb1488b2e70e605235e12121ba614a6ef28534d862a"
    "es-ES"
  end
  language "fr" do
    sha256 "abbc403109df804170053ba67e76273f87aa8be8082db319a28913080b172d93"
    "fr"
  end
  language "it" do
    sha256 "1fd86d094b3782fb9af98399886eea3156ebf782947a29ec3919fbde3e4f0b2b"
    "it"
  end
  language "ja" do
    sha256 "a6047f88d012ffafb4be35a80fa0e1eff036de779fa2fad7d9d58ff1efa974eb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1a764980b7e77c4d33a22a3295f8eaf0f09a65e71de8b5a3a2b891a8e83ad47f"
    "ko"
  end
  language "nl" do
    sha256 "1d8a20b4f1c5527d2d74df8701a431be6066532c2e4be1a844d5f3fa1e4089da"
    "nl"
  end
  language "pt-BR" do
    sha256 "1e3f7daf1cd954facdf2fc4a1be2ae22b5e529b9cbe03f918f722a7f12a61fcc"
    "pt-BR"
  end
  language "ru" do
    sha256 "4b3b9cc7bc378c4088b6bd51e685077c5025db2ada456fe72f8f85b80bbd6203"
    "ru"
  end
  language "uk" do
    sha256 "de50febfd8d32b136ddbfd317add425476f470b5ac85ed643d117f50ca346ccf"
    "uk"
  end
  language "zh-TW" do
    sha256 "c28b60cfbaf1302c6f29ff609678f80917964fc2b06494d6f6d20beaeae95228"
    "zh-TW"
  end
  language "zh" do
    sha256 "85fa9027cf016afe59570756cb1f33ad33e61be8d97dc53bfba707e1cafad796"
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

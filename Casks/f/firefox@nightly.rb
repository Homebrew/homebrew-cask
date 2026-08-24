cask "firefox@nightly" do
  version "156.0a1,2026-08-23-21-38-25"

  language "ca" do
    sha256 "3256b372f864a2e10af12f075cd60a5a5bd2095c2a5f6443ff467658698d282b"
    "ca"
  end
  language "cs" do
    sha256 "fffb07009d0914ba26c6faed9624e32504ec3a47bc0a4ad50a7c79e82fe2e184"
    "cs"
  end
  language "de" do
    sha256 "d403fc4de29bfdb2f8f21010f629b3a1fa034e263fe5d00b48caef8229738a67"
    "de"
  end
  language "en-CA" do
    sha256 "2265c9eea308eda310ca869f60aa6df778eaa1968a9b81f849f42302f772801f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "96b83a592267c58243488ab9812a48d20bd82ff39f30429874b1e6eb460e3342"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0285f856d70363ac282972df8f47530c92a1f889089fb067ec21637671abba49"
    "en-US"
  end
  language "es" do
    sha256 "35e3fdc7bd5cae92cd5a139f80d5f2618a8121e7f21b2705489c459ce22ebc32"
    "es-ES"
  end
  language "fr" do
    sha256 "0e462640a3a9a5eec89a81daba7f36dda2ac84452d52487b21a4eeb5996be4db"
    "fr"
  end
  language "it" do
    sha256 "4c5e16d1b8f867fe4a39f2d563e05dfbcae8bd48f02b74eaf4a7fe2f8fd4822c"
    "it"
  end
  language "ja" do
    sha256 "f9865da70eb2b49a588537ed6f75ac5c1118ea070b3e135f48f162857ec7aa68"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c03a40c7cc1176c806a9e216e9d39923c14f30294d4a9a9837ae621f4241e64d"
    "ko"
  end
  language "nl" do
    sha256 "b9ae4fadc5e80db54ad4798819eb538e538cbea5b7587e41c186029ffe09f663"
    "nl"
  end
  language "pt-BR" do
    sha256 "42495b7bc92329b4f8183ee605596675e2890759596d5e5c816d4d4b7aa27884"
    "pt-BR"
  end
  language "ru" do
    sha256 "445f9c8298799c67d3ad6dab5b80aecb55b1c8f9fd805225c680c1db0cd6c5d4"
    "ru"
  end
  language "uk" do
    sha256 "f17638ff96270ec0f3c8ceb1d041d75b1a4b1e752d4047a8e63da4cb5a9cc5c9"
    "uk"
  end
  language "zh-TW" do
    sha256 "bb2071fac5ec2421d35fe076a3754f679ca25d191a0c42f973a07bd0a467f759"
    "zh-TW"
  end
  language "zh" do
    sha256 "897eecf373252f920ed477da874e2d3d4fec408245fbaa08f67f52fbea1fb97b"
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

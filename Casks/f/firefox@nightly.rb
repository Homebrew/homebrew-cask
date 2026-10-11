cask "firefox@nightly" do
  version "160.0a1,2026-10-10-19-28-14"

  language "ca" do
    sha256 "34acbba0332da52c24253cdc4b35cbb90dbd9c4ee5fd731f33eec6ec0ca26b4a"
    "ca"
  end
  language "cs" do
    sha256 "31ed697e999a91037de7c5730a70055e8708a5967a16256e8eaf15bc83b37034"
    "cs"
  end
  language "de" do
    sha256 "750f35571d286446545e126e7c8ec9921d7e6971e1abbef3f5b973c362fd58b0"
    "de"
  end
  language "en-CA" do
    sha256 "e3bd58ffb8897513288b29a65440674c0b5698bee5def84f84e2eb68cf6ea596"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7ba68bcee3a331b867c9dca19d5612ed9d0a304b62083d8eb224dcdd74417c8b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d2d62cd7378658af9106a170298c9a02a3ac4fc767080fcbbe8ad2d34199ac93"
    "en-US"
  end
  language "es" do
    sha256 "4ee7e3b4a1a45070dbd5fa17953264ec623f75e85e26e7f49b9f0730c9f85cf3"
    "es-ES"
  end
  language "fr" do
    sha256 "00e36e11aed23afeb7fd0c0406ec38058220d986d98e9106a84423ccfd7fd178"
    "fr"
  end
  language "it" do
    sha256 "83ec0140b9e641e89d020776704a613a357a8b157add2394b19da411e62d6b9b"
    "it"
  end
  language "ja" do
    sha256 "ba06f13a3f30d4148df49cafb56902d8c401c12b4c256e9f32eef26c0cdf580d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e9bbe807e6305d2c338aa6c4796bb4ca86ba589b1b31bf2a203cc932af11f245"
    "ko"
  end
  language "nl" do
    sha256 "06633188493baf263c02a99ca7ff063f966588f1877c1e91ab3c257f9fb15569"
    "nl"
  end
  language "pt-BR" do
    sha256 "dc33417ad614ccab5767b428a9014999f08d5d3557a23ff9b9753d68a0b0d1dc"
    "pt-BR"
  end
  language "ru" do
    sha256 "58a867d35017962a5b76fa2e94f18f17f942e70695c71d105bcb7f92448b6fd2"
    "ru"
  end
  language "uk" do
    sha256 "10483e2b97fe30b6db4ada94c8dd9e48b9daa97198f23f8816c60dc72a3c66b9"
    "uk"
  end
  language "zh-TW" do
    sha256 "7db564cbca692559303ecb848fc39cdf3b6e449abdf841d169b3031ffff2b6ce"
    "zh-TW"
  end
  language "zh" do
    sha256 "4dc06d091e9af0d36e6cc5c1ecde6f98209c1bb35264a0367df3cf395fab05df"
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

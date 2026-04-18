cask "firefox@nightly" do
  version "151.0a1,2026-04-18-08-11-04"

  language "ca" do
    sha256 "c9c1ff379e04bfef470660c0fd8000d4b7be672ea0d259d60f29a62904fd0a17"
    "ca"
  end
  language "cs" do
    sha256 "7465c473ff44dacf10b88ce86a1cc2a82fdc901693466e4e58c3dd1d01ed6892"
    "cs"
  end
  language "de" do
    sha256 "97dc68a3fe0dc23f8cc7649721de030e7e134bba0e613dfcada661d40e4c663a"
    "de"
  end
  language "en-CA" do
    sha256 "e3655b6e9a57add72dba8c01e93fefbefd9cf3efb198c435e4966cdcf62a6013"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ddc686091a1e470b5b93dc5557692fb0dadd8087817cdb18bdc548b9ac4f43ff"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fa3a5f068918a1096631db6cfdeb7d6b9b988d94da2ae9bef849b3a034cd7b04"
    "en-US"
  end
  language "es" do
    sha256 "4b2aff05536f6779dc78abd6d76ddcaca47d9256b01ae5532b9bcf81d1aa0dda"
    "es-ES"
  end
  language "fr" do
    sha256 "21ce0860436bbcaedb68b4f9258ce79f9be82a7f4827ad3399d472d431b9773e"
    "fr"
  end
  language "it" do
    sha256 "40da6bef02d1cbef30cb43f8839cc2e03253a2d4df18775e3c03dcbffe3577bd"
    "it"
  end
  language "ja" do
    sha256 "3d33bcb5db5716bbf01d8ac17ade5a4042901e56013217d3758937816a3f392b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b4dc6e8a899ccb15bfa0272d4bf8479066318abbc03b4fe6f865bd6234ac21b2"
    "ko"
  end
  language "nl" do
    sha256 "dc6fc2537d44c2bcf44f805966e7cf9db447c5aa9028787f2ee400cdf5e024bb"
    "nl"
  end
  language "pt-BR" do
    sha256 "0a5f72fa602e497948ba56437edd0e3f9305b8408a67176fda58484ccef9fcd8"
    "pt-BR"
  end
  language "ru" do
    sha256 "cb987f5d5ccfbf1c5acb0bceef7cf25d38654a72690d0702bdd1645a4d6502d4"
    "ru"
  end
  language "uk" do
    sha256 "ae446d7108fef86fd247d0ebb83234c80fbfa0c6230b899ab9c2b48b0d790653"
    "uk"
  end
  language "zh-TW" do
    sha256 "0c6acb2dd620111b45b3db465558f8aa20bcef3a1ab3a9ede5f7aae60dbc0724"
    "zh-TW"
  end
  language "zh" do
    sha256 "6f6469febfb1c3b9e6db35af73d05748344ec2eae0dca36bc7c46627267b3103"
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

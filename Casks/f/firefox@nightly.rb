cask "firefox@nightly" do
  version "139.0a1,2025-04-16-09-12-30"

  language "ca" do
    sha256 "08df530795747a56d8bf57705d8d4586ee5889ca980677e67915660f09a8920a"
    "ca"
  end
  language "cs" do
    sha256 "5835f95307324ff34287ef18cd2fd572b46aa8964162291b425ef760b38e8bea"
    "cs"
  end
  language "de" do
    sha256 "c15e91b35585faea8d1997d253a88998f9fb72265905cb1c8b167c77c3247610"
    "de"
  end
  language "en-CA" do
    sha256 "918fb71b83db57297d3dcb785a0b32c7b32af82b884bd401175bc6049c9838ae"
    "en-CA"
  end
  language "en-GB" do
    sha256 "99f4cc192bef2e0622d64859611e1f88f6d966a8bb0eb52ef8efd756f22c857e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4ac18c85cfdab7bc5fab3298a8a9a0e1d02bb5539d1c28e221ab0f744df0ce96"
    "en-US"
  end
  language "es" do
    sha256 "7e59ca49203605cd3d808885c4c8bd3dc40d334c7b391293970eda6b05094853"
    "es-ES"
  end
  language "fr" do
    sha256 "d2aa58b296f5c732094231e3b2d90df36d963184864da6ed8adde373052b9e87"
    "fr"
  end
  language "it" do
    sha256 "b6e7c21e65b5f3e8046aca010fe02aae9c78aa67d39fcf824ffd356bed8368f0"
    "it"
  end
  language "ja" do
    sha256 "bead9e9e6610debd298600b4959331162fae8b6292aa9868761b8241727c44fb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2b25c1a49c7f41fb381383bb94cb59692b0ec4dbc71985d759f848db4ca2620d"
    "ko"
  end
  language "nl" do
    sha256 "26ffb33a3c363bb3c148fef846d4e273c7bb704835bf84e3f3a829173a046d60"
    "nl"
  end
  language "pt-BR" do
    sha256 "fce4f719c0d91a870b0995d898c512af99a962ed43ececc1a68d82dcd309b195"
    "pt-BR"
  end
  language "ru" do
    sha256 "85d902c27976b19902f786ecee1644cf4bbe5bc082769be67ae768fba9e5226f"
    "ru"
  end
  language "uk" do
    sha256 "284c693e73a8b41e50e98b229bf5364e3b9484726ca9eac8daf796cf2e2886b3"
    "uk"
  end
  language "zh-TW" do
    sha256 "5dc93f86175241d3b936071998c005a16624d5ed0234187326fd2a337d25e69e"
    "zh-TW"
  end
  language "zh" do
    sha256 "13733c8c11d13c3631d821ac05832ddfed83f15051f70217a30b57ea72000ae0"
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

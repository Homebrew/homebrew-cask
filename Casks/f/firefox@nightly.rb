cask "firefox@nightly" do
  version "146.0a1,2025-10-20-16-15-46"

  language "ca" do
    sha256 "90ad42fd7bf43892770ebc97f388430e3853f359d5502a5748f95e7ae8dd3401"
    "ca"
  end
  language "cs" do
    sha256 "cd8919405d5811ab0f1a8376eca2c5ffc7569e31328d6008ba51b2f180942cd6"
    "cs"
  end
  language "de" do
    sha256 "42a65ae3b3347cfc2f17e0fad0557ed7fa0f854d5691dccb7a137ae1739d9c56"
    "de"
  end
  language "en-CA" do
    sha256 "9b1136dac1dbfbc992891c52ba084f65fab6899065127cf93008dacdde4560a5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e4eef32a6cc9ce6af8735023b38030255ecb158d32ed7c12d9f7e8f369cc75d1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fad5a97d8e5129de3d51b7a156991031b303b6adbe614848b297733a58e408e2"
    "en-US"
  end
  language "es" do
    sha256 "452dcaf9fe9c2f29e60b9063b37339f7372d1971ad0ca5d845e6b1f4ed21ece2"
    "es-ES"
  end
  language "fr" do
    sha256 "e446a659c88de01e3c7ffc89ef6db2cc9d1d100bc0a1863d4ec11da42569089a"
    "fr"
  end
  language "it" do
    sha256 "888960ca517b21279b6dc5c938b6a491d64fca691f28d3b68cde1040f6891287"
    "it"
  end
  language "ja" do
    sha256 "568bc8b1ff45360b7505fafa73fe40ec1948e20fb10553081e24774f8105897c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6f139804ebc3ac537a4e12d5679b5e3da27c5b01ef98f57e780351d5ed266e8f"
    "ko"
  end
  language "nl" do
    sha256 "32d720cb6f0bffb898f5f0d96b3588176c0b8349654c9500e5d053f11c3f5de5"
    "nl"
  end
  language "pt-BR" do
    sha256 "0ed11ac75c6dd4fccb9ae1928e0a5b848f33f6cc1df714006dbc4e28d256dfc1"
    "pt-BR"
  end
  language "ru" do
    sha256 "938bb029f2013a0af2448bef413c8f0ce98a8e94807df339eda1ea1c6ba3fae5"
    "ru"
  end
  language "uk" do
    sha256 "b5ebabd260ecdf432cd55df7ce1fe49ed898141e0ea5cb4729c9aa5c07466c98"
    "uk"
  end
  language "zh-TW" do
    sha256 "9926a8760287c0d1823c932f571b3459a28d9dea2d478ea88a7c04a69aa996bb"
    "zh-TW"
  end
  language "zh" do
    sha256 "1c6df5ccb46c40cbd6ad399bbe4da47a1d13a80f53685d53b19aa3152e3bcab5"
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

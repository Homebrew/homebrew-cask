cask "firefox@nightly" do
  version "149.0a1,2026-01-23-09-45-53"

  language "ca" do
    sha256 "08a55b9cd44ef30be7d6581cbf225f41ca82662e6428a3e07ab4650e0da9c066"
    "ca"
  end
  language "cs" do
    sha256 "c81ef28dc8e76320f4cfe11b83ef19539ac1346914bc934520f0bf6d3046d29d"
    "cs"
  end
  language "de" do
    sha256 "c9d01a6b47e949ba32693f5af0c1cd896ec54df60e322043d2de13dcd2211af7"
    "de"
  end
  language "en-CA" do
    sha256 "ffa2fc8c120c0405712c092c8b28affa4a04eaa402926f740f8078ec033f7f21"
    "en-CA"
  end
  language "en-GB" do
    sha256 "144cc49a77eb4db9d8b3760caee384ede452b045c573bda13e38d6f7056598ba"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d2c40689181ab0773fdb6edbf81b52b2e5c7a913f0a8cb8e09021f9585b26d3f"
    "en-US"
  end
  language "es" do
    sha256 "509ca90c7acbb3c1e7f0803bead7d0f00172e9968b7aa70412b4267bd3dd9c5a"
    "es-ES"
  end
  language "fr" do
    sha256 "1baea65c268ba957a35f4b5b44408ca4386a86d3c02832d22a2842c0e0ba80f9"
    "fr"
  end
  language "it" do
    sha256 "504eda9ebe21147af60cdc493c7b65aefb73ffc28c35d8d99b7aa1e690c75ca3"
    "it"
  end
  language "ja" do
    sha256 "e22d222a6bac2e77223b8c11e3164d142ff5f39ba6c944e4fa2bebcd11442e87"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6e2cde0447f60f7d7b558be7f09cd831096ca37a79ef1aadc913c2c760ca5b49"
    "ko"
  end
  language "nl" do
    sha256 "c922b84d148e099ede743329b329833977a6b5ae151068d42f69cf85c7dfa11c"
    "nl"
  end
  language "pt-BR" do
    sha256 "5b563d2c3b629478a4b1407aa638dfe0bd4395b3c09a4207956fa1317d1520eb"
    "pt-BR"
  end
  language "ru" do
    sha256 "4ec8a695b90a82ca6f5a12f4cb25e4cbae6069924278eb86999fe11ef46417c3"
    "ru"
  end
  language "uk" do
    sha256 "d693460e1cc2479f284973fc3ffd0d7bfe8aa836ff1310aa8b2ce5a274bb2387"
    "uk"
  end
  language "zh-TW" do
    sha256 "3d0c236c6f4312769e4632b405c1f815f8a0e050ea70d287ec4ff71dcb12b096"
    "zh-TW"
  end
  language "zh" do
    sha256 "47839a86a0dfb2576cd4f567034c83ceacc5b892fdcdf514ec12813a3c42eac6"
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

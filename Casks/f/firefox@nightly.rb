cask "firefox@nightly" do
  version "154.0a1,2026-07-10-09-52-30"

  language "ca" do
    sha256 "9c687ad9d215cff52cc7b305ed0034dc518845e6ba3343be7ffec4fd32373e1f"
    "ca"
  end
  language "cs" do
    sha256 "10c4363a00132bc2131acab1e4d84ffbd7a57e05ef8b01690dc8f417f47f99b0"
    "cs"
  end
  language "de" do
    sha256 "8783f7e91f36f533735d0d41371e9254c416d3b848711960e320382242485ca4"
    "de"
  end
  language "en-CA" do
    sha256 "c97211ebaa59b3bd7275c2be24478f22d4e98c6ab5fb553ad3c7eba975713f90"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1921aa8c4ce8e0870b2e90c4d3c61c46cf707453fd3304eb4436a06238c01e29"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2ae4a506e7143abd9a65e0c11e3ec4d261b46186a93e0d4fe989e9c9f57c195d"
    "en-US"
  end
  language "es" do
    sha256 "605d9aad4cb934ad05265dac6f25c60b7c5091711112b0b3d9cd87a34ba71573"
    "es-ES"
  end
  language "fr" do
    sha256 "65f0917bf768172cfcb1e2646c9c311fbe5d3dcb9f565ec530ac89eb6f039935"
    "fr"
  end
  language "it" do
    sha256 "f0ec360ab8d448c59168c77c8c911735c6916ec69b0604b6b9af722c832a450e"
    "it"
  end
  language "ja" do
    sha256 "ed9caa4b26371eb8a2b402595c049bb5cadb1fac9cae6280ab1110f76da9a50f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e3ae29cece475c21fee8615613640967db1e4db035b2228f192d363a949428f9"
    "ko"
  end
  language "nl" do
    sha256 "5f451bb933c214b62307ce50b91a1200df5e8a959388e2503926d5f939a95230"
    "nl"
  end
  language "pt-BR" do
    sha256 "c624d02ee094471481b2194b8cf5ac54587a903f927c36b08e3602b7582f25a2"
    "pt-BR"
  end
  language "ru" do
    sha256 "e459103a6192f1656723e8d2d23b8fb0e0ea72ae9541950340855c00fc56e39d"
    "ru"
  end
  language "uk" do
    sha256 "4a94267647032349ffdd0da6d44347590d5c200aaef5cd32ef6c202d4a0f2ae2"
    "uk"
  end
  language "zh-TW" do
    sha256 "fe382cb676edaf515c718420e5b1a0b74e9ba602dedf3c4e7e2ab5540eaa800a"
    "zh-TW"
  end
  language "zh" do
    sha256 "cf6560bfb24b03181129e35d8f278333511f78282d0c188c6e840fc1d4f4abf5"
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

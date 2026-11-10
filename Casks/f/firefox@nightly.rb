cask "firefox@nightly" do
  version "162.0a1,2026-11-10-09-40-04"

  language "ca" do
    sha256 "5c5e12b71c9b7502b605b44b27aff8e9ffcb1077362360d1fac7933ebdf7b97a"
    "ca"
  end
  language "cs" do
    sha256 "45e8dc28147bfd0633e4acfe987f5d781341ccc6523b917cbe6a54314d91f511"
    "cs"
  end
  language "de" do
    sha256 "dc5fb7ee1c57dd6c5f9b6937479613ca1ea4b1e52c11d2728ababcbb67a5616f"
    "de"
  end
  language "en-CA" do
    sha256 "9bc9a712fac3d5857d05239004671dcacdf606ae5118a1a6d0b0e93452e0188c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "aae3e3f7404e88e21dbce674ecb70a5de5bd7c782145621b061e84cd5ddaf1b6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e83b8d1c738f7505f6c0a0d9e40ebea8d5a04c097ee4327665cfed404fd1de59"
    "en-US"
  end
  language "es" do
    sha256 "76ca86268ed13c04782ed70529798af972fa4fe12724a852bbe3a20a758fc7c2"
    "es-ES"
  end
  language "fr" do
    sha256 "68d0c72c9888e0f025d0d8eb6c75a451b10ec5a6652eae16346b0451f18f06b4"
    "fr"
  end
  language "it" do
    sha256 "40fa0547629bfac80055556e40573412103a2e85023e538fd713f5ec68c76d3c"
    "it"
  end
  language "ja" do
    sha256 "67f1bd0e6ff3cd7591ad5dc822a759c9fb3559eb036e53d4436a3c43393fadc7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c0a5b9337d824d906fe2e85a46036156e4c824d5a7cc08162ce2fb2aa28a5435"
    "ko"
  end
  language "nl" do
    sha256 "8e59fa04a10888f217aed78b3a1b578b527950b3c41202250c6a88f4c4e3ca0a"
    "nl"
  end
  language "pt-BR" do
    sha256 "1e82a48dfb1e7a6b948bd5d45e2938c129db9bc9b94f3bec14696c894f9be2e2"
    "pt-BR"
  end
  language "ru" do
    sha256 "4c0c3abbe0d5e62f139aaae545df87d7eebbac0b0f21c6195c5e0bf74c03ffa1"
    "ru"
  end
  language "uk" do
    sha256 "a2de7d88f7ae8329fc6b66d9cf05db6f6d592ce22b119f35ac367e57299c3c36"
    "uk"
  end
  language "zh-TW" do
    sha256 "bc750a781347eba671c806638e78223a7108ec7cdfe50f503396c658a8246a14"
    "zh-TW"
  end
  language "zh" do
    sha256 "b290ba1987c93b7b233c136e33c034aa7c61b0450f894c377dcd7f2758e31491"
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

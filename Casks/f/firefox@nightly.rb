cask "firefox@nightly" do
  version "162.0a1,2026-11-12-21-52-26"

  language "ca" do
    sha256 "1a6aca79ffdb6417c0f5174f2aa07cda4cedde6765f796e8de8e48ff44750070"
    "ca"
  end
  language "cs" do
    sha256 "50bc7a79615ac53177fa1401b6ecd75e609002e10c7202ba1b3ce27ebd46c4be"
    "cs"
  end
  language "de" do
    sha256 "1cb804b36a96cf613e6d64dc6d3659304482f49cd6a95866b6bcb683a22b2ddc"
    "de"
  end
  language "en-CA" do
    sha256 "9f641dd480472b35e037f8f5b09b1bdb135f164121bc16da22cf6dfdae25ebb5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c3dfc0e516d5d55b4f11496c6697876253856cbaef18d8ea2587275be00e92b7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "761ce6bda6ff02ba520b2bb503c2bc46396edef901e1e33343673cc5550c8699"
    "en-US"
  end
  language "es" do
    sha256 "4bdf0d114bde7284143b094bdc0a79da549282c03dce3157264b94ad4604b266"
    "es-ES"
  end
  language "fr" do
    sha256 "cc71b9adcf9545c9b38981fa57db1128323b27b11197426f4f0d62a04ce305a6"
    "fr"
  end
  language "it" do
    sha256 "ab4447582f4385ad18e843a1a2c0f7df08960b48e51a5bc0e260a2f3655e7964"
    "it"
  end
  language "ja" do
    sha256 "823605d1dea68cee98a1a9101debb24a44421482efbb9baaa2a4f80ab8000d33"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "29a634b9734f35c694f16aa7d3ef76e77e1514275c0347bf425db7f8d861c7a7"
    "ko"
  end
  language "nl" do
    sha256 "8b5667f71564ccd500c06dfd155fa0aed37fd2c0bc2f4505b3b2868818b94886"
    "nl"
  end
  language "pt-BR" do
    sha256 "c60e3bb6728e2a09c450b2958519647cddb6a662a5e8fef5d55f79c4530a6929"
    "pt-BR"
  end
  language "ru" do
    sha256 "8baecb4564ae0a3dacf7e8875c5916eb81f85ad6dee1d7d19009ddbb6caeb7a4"
    "ru"
  end
  language "uk" do
    sha256 "32ba1b4fac67230358d835fd44cae9c55598e66792f5fe35cb807ad13c1c4c3c"
    "uk"
  end
  language "zh-TW" do
    sha256 "c524b545850c7cc2b5862109f82d849da35b23157da42e365132628b9dcae266"
    "zh-TW"
  end
  language "zh" do
    sha256 "88c8f39b909d7ec5988bc4110c62f4309a27a8c9e8b41ca604d8eb3aebabc8ca"
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

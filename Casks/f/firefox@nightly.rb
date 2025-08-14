cask "firefox@nightly" do
  version "143.0a1,2025-08-13-21-49-47"

  language "ca" do
    sha256 "e36e0061fb54f84f57763268eb844606e940a283eaeb0f205471fc078468d9a2"
    "ca"
  end
  language "cs" do
    sha256 "71438109334da27e17ece5eb3d7101523e4a0849744f91ddedae444e6a0d1a8a"
    "cs"
  end
  language "de" do
    sha256 "6f3633603852d4caac7aa9d634a9925ec1940aac6e55281e7ddb167265664b11"
    "de"
  end
  language "en-CA" do
    sha256 "e7b73167f4d21f9f297390b55809f77eb616ea0d0b06a602e2544845fcf3a5a2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "636f970236c1b68a025060690346ecdac70fe0cc0bdd08f3bd5718c879909725"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9a17f627a5d117004cfa4f6a996444b89aa223f6b87b8a610405be889ee92ee5"
    "en-US"
  end
  language "es" do
    sha256 "b12f0fd2ba0774e130526a5727bddcc6219859b91f72ba73b22c1561ff72e088"
    "es-ES"
  end
  language "fr" do
    sha256 "7a20f5d7ba37a885c1562f0d3e42e6ff60779b752f2e5bc6d060e94b2c19653f"
    "fr"
  end
  language "it" do
    sha256 "a69fd48bea1bc70893a4f955c4a7aace5b39d3a2ebb60ebe07c54daa2dc6bcc2"
    "it"
  end
  language "ja" do
    sha256 "b4127ceabcfa8ff09c912185736ddc60bc13afb8a746a0f905678aa2d7ae34a7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b44d400de83e83509a609f98db684bdf471e31b0f41e9fd6aa9a55d398e4e8d7"
    "ko"
  end
  language "nl" do
    sha256 "029fb31e60d9dc968e28bac6dbbabf9317840bf749dcb3d3a55edb36fc48f3c5"
    "nl"
  end
  language "pt-BR" do
    sha256 "942092ad76324e8a9a40c1eef8fbab154f3b6ce0bd536722b62e26a70f9a5d68"
    "pt-BR"
  end
  language "ru" do
    sha256 "6881ea90dd2f82e1ebd0196c38df8d47ddf19bb531e79935591743b344d4725d"
    "ru"
  end
  language "uk" do
    sha256 "69b1ae2496e5de2aa9a8a065bc63bc317514c3092066c73252396a80c9c29370"
    "uk"
  end
  language "zh-TW" do
    sha256 "7aa32d9923a9731d76a17ea8fef9ac1710af49f2f33a196693bb4a19e73f671d"
    "zh-TW"
  end
  language "zh" do
    sha256 "2362d86e9b1bf7dc504e476fe45250fb75936960b2fe388d6de4d3d052781cb7"
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

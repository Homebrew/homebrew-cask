cask "firefox@nightly" do
  version "158.0a1,2026-09-11-20-10-51"

  language "ca" do
    sha256 "9476f41cb8b318203666e29284e01057e5f820288130e1e13178e8db07a79ef9"
    "ca"
  end
  language "cs" do
    sha256 "4a4365b666c0b52bc5505819c08492547e2f3a2d1ba3e801a89e6d2a7116877b"
    "cs"
  end
  language "de" do
    sha256 "8e0780444b8c07843d36ffc05e13dbd36a8f8b54bd706cf92c5a4b79804099eb"
    "de"
  end
  language "en-CA" do
    sha256 "4c0d600e01c75b2392a59df9bb91472da95742ef9f7e75bf7f0cfd9590ebd6f2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e8727024435cb57c387f880542803c8cfdcbdaea6ed32805eec3bda275253b1b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a2705714fd4168020127706628df9aab9b2811fce1b5eeca838cab7fa116383e"
    "en-US"
  end
  language "es" do
    sha256 "046b279fbf01e87f12585cc0037d91f3ab35b1b3f0bf140632aa4bb1aef77f1c"
    "es-ES"
  end
  language "fr" do
    sha256 "b517019f2f608822d92ff4a59d1869430882c608fde21e6189ecc07a7914f9ef"
    "fr"
  end
  language "it" do
    sha256 "7348b80bfb86756d1fcadb14886e6a5b70f92cfb0c122e631af3498b03425591"
    "it"
  end
  language "ja" do
    sha256 "6e6a12eeef1dd43c84991a2513191a84ebbca7ecb97f723914e9fa9f416fb06f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "68d20b85db1185daf2fd2f76b101f20b098c3c58f6b43ee516bbffc2df5a5fee"
    "ko"
  end
  language "nl" do
    sha256 "fea0ade1ea000e2393d8dda5bbcb42beedc8327a3cc00032c4d5eb0bc163f268"
    "nl"
  end
  language "pt-BR" do
    sha256 "86ae362dd83a976d71234964a1e5dd4715468e9d2b2d53f4a285dc1e7ef477d3"
    "pt-BR"
  end
  language "ru" do
    sha256 "dad19abce3fdc43be5aadca99d58025e95609f0ccd36bff1e23b43dd80d2f4e2"
    "ru"
  end
  language "uk" do
    sha256 "34053f375c60ec2735b19643ee6bf5e9741bc247d9c6cae0acd111a4406ffb57"
    "uk"
  end
  language "zh-TW" do
    sha256 "89ee77f42998d5c5a1e682896dc147f98102965d1d4ca6c3c5f0f5ea6253c694"
    "zh-TW"
  end
  language "zh" do
    sha256 "36a5cb843b1e054aeb8d272c4f174457367d6530a7f4ab7b6ce975a1c9ce03ef"
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

cask "firefox@nightly" do
  version "141.0a1,2025-06-15-21-14-07"

  language "ca" do
    sha256 "f2f9bb3767207b103bde147a41bff15fa4433a539affea3f4783385d20ef9adf"
    "ca"
  end
  language "cs" do
    sha256 "4307d28d4f34c398e5d9c2ca486dc640b63f1a32fa4ca69b549e11f6f30cef45"
    "cs"
  end
  language "de" do
    sha256 "d244dc33c0ea29c4e3417a8b88381bc080c401da2df660c00b63b0cbf797f9c2"
    "de"
  end
  language "en-CA" do
    sha256 "11ae9c1bd45b858bf274260e3c2be2f207fd8b6e059f62511622036d334e3ec1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f98685c3a022b478a779226b61d76bf3cde10527e1a373034c55f60b33a16c3c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1df68a03a8f08099a070a3f2f58e31561ac6e7ae23b07affbb6ec74fc2bf3933"
    "en-US"
  end
  language "es" do
    sha256 "94454af0bc68874b88398e1ec6520b5626c4bf9b34fe035d8e87b2f3af48c3f4"
    "es-ES"
  end
  language "fr" do
    sha256 "90b320d5228f565441bf28cbab64d2cda26dc617feae0b193c33bd8cb26c1651"
    "fr"
  end
  language "it" do
    sha256 "40ad26068bf6935f109af86b9a37df726bf7a336171b059a8caeaaa4f9f0166f"
    "it"
  end
  language "ja" do
    sha256 "051e185f5d75ec89606aab196e60a6d5a236385b8f84e8e5fdf6f2db9161dc0d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e54be724f66ea8f355aa1ffe302a68a1c78c6248e393fff9c48373b78b143c0e"
    "ko"
  end
  language "nl" do
    sha256 "6205b21a0f6ef5f28bf35642f56c2d038775747935f073e617036facfdd8d963"
    "nl"
  end
  language "pt-BR" do
    sha256 "08612b7822ccc1cf0e4486c2d89a7fc18b19fc82594f1517c0d0ac9028a0daba"
    "pt-BR"
  end
  language "ru" do
    sha256 "3c2c80c489e626eefed84bc617f8eb2592ef210ccadc5cde9929a434d1e377aa"
    "ru"
  end
  language "uk" do
    sha256 "4685dc2764829feb23c34faa7b3e9b3a56c50dfa2c75f98aca25e0cc0b34585d"
    "uk"
  end
  language "zh-TW" do
    sha256 "795a9221875f058b5620188e28e301304c0a5f2a74932cd1dab62f3c90d34f82"
    "zh-TW"
  end
  language "zh" do
    sha256 "b5f2daefe786fd4e3313968e37b30234b07ab55d1ffce3af69775cc2d8898927"
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

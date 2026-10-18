cask "firefox@nightly" do
  version "160.0a1,2026-10-17-21-03-36"

  language "ca" do
    sha256 "23568765c8aee3128c595e51d4a84089f27e2049da8acbf0d27ce6ed4e9bbf5f"
    "ca"
  end
  language "cs" do
    sha256 "3a0b0bac7dec55d2876800b8c6de93457dd29eb7c19beb4f9cc5c8a7a37f0092"
    "cs"
  end
  language "de" do
    sha256 "f54d1d4795dbb71e423cdce484d14df9d286b33c7814e62ecff7c420632d04c2"
    "de"
  end
  language "en-CA" do
    sha256 "1cb9787186df43ab24be64949c94c0415a4eb931c64b80338444e8c7c9233800"
    "en-CA"
  end
  language "en-GB" do
    sha256 "694f72db03249bf64b0cc9a46fe701fb290e07245b97de424c98aaf4a47133ac"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1ae3a0093d4bf30536e8eb549c0023094d6da8c32da792dae60266521d9250ca"
    "en-US"
  end
  language "es" do
    sha256 "b3940e35dba2297e9569f8b91ca329dadc4a5becdc154b48ca5a469d06ed3e33"
    "es-ES"
  end
  language "fr" do
    sha256 "7bb09fddbfcff88e6cf9e1848b357279e515a3e1da8b05ab1ee5ca5a90ec79ce"
    "fr"
  end
  language "it" do
    sha256 "4774b248dda3f49b7291474d024ebc65e2036d42fba1576cfd37c2ef9fef2a01"
    "it"
  end
  language "ja" do
    sha256 "b7046efac7b8da84375294b7925f57897a798f94f132048f66f100a46d260bbb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bf2d6aaebc77f4674bf85ec1fa7ffeddb0b732552d553a6f438bb4ca7efabe28"
    "ko"
  end
  language "nl" do
    sha256 "865848417bb4e005022ebf2b0643096a00c0244a675fd87e05b84e4c2224e112"
    "nl"
  end
  language "pt-BR" do
    sha256 "2f305a309892b472c45964169bd84142b5381b33e6c453e2fbe27f9471989072"
    "pt-BR"
  end
  language "ru" do
    sha256 "e7362d4383b56b6f41cb83c4163e0545f4e7817544da8386b64f0da617ebd12f"
    "ru"
  end
  language "uk" do
    sha256 "48c2999266a06b6caa9c71197c33e3b07072cf74ede25dab655967c509fea9f6"
    "uk"
  end
  language "zh-TW" do
    sha256 "6f0a99ed5fe45404accaf2dc810c2c4c208a10640babefcd0b85a9e4134576d9"
    "zh-TW"
  end
  language "zh" do
    sha256 "1d16ca6e022d752981b3cc85c028c904dcb2faa61ce5b4e901b82b72e364a175"
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

cask "firefox@nightly" do
  version "142.0a1,2025-07-14-21-14-51"

  language "ca" do
    sha256 "1c4369cbd3c277b980e50d60896e3fcb2c8a1c78a0f02bb345a3c47e5534994e"
    "ca"
  end
  language "cs" do
    sha256 "124efb57cf8d589e68cb3a2cd115d9777f0953e707fab999a956919847fe8917"
    "cs"
  end
  language "de" do
    sha256 "feefbe11699efd2a3239ee59ae0a4382d2f6065933c51a7f6bc17c748f0e116c"
    "de"
  end
  language "en-CA" do
    sha256 "3f20cb108690a0c157c7a9916f5e9fed177dc979acf7b0b8cc42025e80592f99"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5d3f89d2993a449a8b74ea81bea63475694ba5ddef42a4ba32d7152e593ac9d2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1c4a8dda1cf6db131e7c6f0766186a0562eaeaede6514a6b231e0d6ca81b3dde"
    "en-US"
  end
  language "es" do
    sha256 "bf9960602116c2e7edfaea20009567151dc609020231fbbed85d5ddbb2d396cf"
    "es-ES"
  end
  language "fr" do
    sha256 "0f3f6d67384d8767840ecc9606f252c4a6de3e7f7497ba063e39b2f1281a6254"
    "fr"
  end
  language "it" do
    sha256 "4d38d341d09957520e9293e1bc41a09b104ef33931351d78ca91f635a7e33aef"
    "it"
  end
  language "ja" do
    sha256 "6bfe6daed44c007918c880cfcb5487672e35f70d425109211743a8dbf8661b38"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9c760e64451b9bb843625d94576993dc0ff1ba43831975b9129d4c4ac69a0e59"
    "ko"
  end
  language "nl" do
    sha256 "3dcf8c3de82a44e8c3da14abee7ad21f5409c20772c7bdbe393a632f51c71e51"
    "nl"
  end
  language "pt-BR" do
    sha256 "b39b7b54b01c53c8ee02d78d3035bfcc79847630b560226d091951052f76236e"
    "pt-BR"
  end
  language "ru" do
    sha256 "4d5a83dbe5d9395d8b093c3c18fc711c331bc447c62bac78855e2ac6dea286c8"
    "ru"
  end
  language "uk" do
    sha256 "caaaa3eed5009f8b41f78293f23ae7bdf34dfc2c0668eab4447bd1fb16dc69e0"
    "uk"
  end
  language "zh-TW" do
    sha256 "f1d18ca899247b6137ae9e1b28844602d5be72cc1d11ccde7f891ee7cdb206ef"
    "zh-TW"
  end
  language "zh" do
    sha256 "5e6a0f0293aad967f9a3b8446489680a6df4b72b11b0e1f5cc5e8e8634c5f151"
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

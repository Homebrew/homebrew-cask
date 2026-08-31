cask "firefox@nightly" do
  version "157.0a1,2026-08-31-08-59-37"

  language "ca" do
    sha256 "6687d380ac3bb2657b79e82fc41d8aebe9aebd88e65b0ac9a2bf00c99cbaa53a"
    "ca"
  end
  language "cs" do
    sha256 "f4b4f79b8dd57931c35f98af6e7881e369071a6e669d004abc382e29967b10b1"
    "cs"
  end
  language "de" do
    sha256 "62c3fef484a39e1f61f8a367e9b0e2183f4df8bbfc72305d096f3cd0ba03cf82"
    "de"
  end
  language "en-CA" do
    sha256 "916aefbb26374d8c5a7f1586a2de01945768e649401197136254575996d29de7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bda78d6a03d5343525a1edf5c9c784ab17eeb561a28b91abcf9f40a92fdc2c30"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6539f87aba05f8f3ff6462040afdb0737431dc7e6bf0e10c52dd04fe3ce68d03"
    "en-US"
  end
  language "es" do
    sha256 "08943b7c0a4d863b2a41687abd6f0bf2679b5c7da05772e7b64d269a57d0b4f9"
    "es-ES"
  end
  language "fr" do
    sha256 "309cbe5fdcd65d0f9011752e78526f666f92791a70d5916afd3230f7cd0e8117"
    "fr"
  end
  language "it" do
    sha256 "73308238da1c56c1e5bf40be3fd412eb7518fff12e5cdd6762ca2ba0e5714587"
    "it"
  end
  language "ja" do
    sha256 "5e3fa0712dbb8170c3ec9e1ec42cd754e6424dc6add26074218aa4cc6e0b4a35"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "dbb9914c8af39fe5b5f9ddd15688d279ca828de08fe3ad893bd8d5114cd4aa09"
    "ko"
  end
  language "nl" do
    sha256 "1839b8bbe82e191c2f41c129e41ef8147b43f9c2c83ef2c4c5001babbea339de"
    "nl"
  end
  language "pt-BR" do
    sha256 "fd940559b19ede07f21b4d46b6e83b69648ce41816a513dd3fcf932097b09181"
    "pt-BR"
  end
  language "ru" do
    sha256 "9563bce5c670ff853c6661bce3a7ad11c87d779c4719cf236fc63c4c2d89f03f"
    "ru"
  end
  language "uk" do
    sha256 "3a8266188ecc433f4f1bfe0a31b95caf35c0ae8a0b1d381927a4b00b293d0fae"
    "uk"
  end
  language "zh-TW" do
    sha256 "4f23a2d6c58f67bf2f6cba782405b54934b2cc3f8ac3ece99c21736177cf53c2"
    "zh-TW"
  end
  language "zh" do
    sha256 "43875a17ce5c8cb252aa8b3016abd1c347174cfafda44cc5940e7010c939d982"
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

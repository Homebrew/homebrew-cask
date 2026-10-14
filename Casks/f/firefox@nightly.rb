cask "firefox@nightly" do
  version "160.0a1,2026-10-14-08-01-35"

  language "ca" do
    sha256 "f2319bc388955bca1e07f1521301786ddfd4002b0851895fd68266f5a4c0302d"
    "ca"
  end
  language "cs" do
    sha256 "2ae130a82cbfe20013dcaaa43ce410f0f273b9077bb41af1d915102a10c84b92"
    "cs"
  end
  language "de" do
    sha256 "2125ba69b54fa6625aa196866626b3441a7f8cc5f90e9a680720b1fea1659a7a"
    "de"
  end
  language "en-CA" do
    sha256 "0c8c38c02c210c8f541a4c8770e94167a19742e9a7fb5557b5ba67df1f4880c8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ed536179ed17cb9c3267c3e5c27af4d97c786cb3de31cd68aa3a4a56aa0abcd6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "787f2fb680ced9c05f5523ddb66cb3ca6caf97846e54e0c1a348f187fa138fce"
    "en-US"
  end
  language "es" do
    sha256 "10c2d246705b0b0d3fe1c04a022fcda6e474d62fcf6ba7fb5c5a9538fa80a233"
    "es-ES"
  end
  language "fr" do
    sha256 "8e30f7680b8668de92defc3ccda1c1a7b5f712da0831e492ba419f0a1d6b7a2d"
    "fr"
  end
  language "it" do
    sha256 "dec700cbc3b582bb854bc0080b6ab631c20f651f9aa708dae8efc4406b81671f"
    "it"
  end
  language "ja" do
    sha256 "e5204225f8732b8e55a3b2ce5fbb9da453cc925b15ce0fc284723176f84f11cc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "06f555f6bfa418859e0a932393a2af083f3a1688bf281a5eebbbeeb3d477573b"
    "ko"
  end
  language "nl" do
    sha256 "af799a231592a118eb7739feadbc68337bcc3919ed7ff0952d3cb114ea8e056d"
    "nl"
  end
  language "pt-BR" do
    sha256 "6350b4abccf5506208a6b51c3c15cecb327eeca4b026630d8b45853d7abca285"
    "pt-BR"
  end
  language "ru" do
    sha256 "99c10742939229f5761a42252018773b1eac17e6f6e3e7709d22df82e1323898"
    "ru"
  end
  language "uk" do
    sha256 "251f08e4395b32c32bbf35876329c08238cf83af46c523e5dcd83ffd513159d9"
    "uk"
  end
  language "zh-TW" do
    sha256 "c31fc23e823ab67a5695cfb72c1826c09161b48bb892e936b21877e4ab41fe8b"
    "zh-TW"
  end
  language "zh" do
    sha256 "c97c10bf65e69809387743b37c6dc6aac9d42c760f50d007f4b6c6d022b1fea1"
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

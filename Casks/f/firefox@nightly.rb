cask "firefox@nightly" do
  version "150.0a1,2026-03-12-21-59-27"

  language "ca" do
    sha256 "b40d5f45e4514480c4617cc9932162cd96a1bf75024777507ac400dc80195c0b"
    "ca"
  end
  language "cs" do
    sha256 "98915f03e4f32fee9e9e9658e5f172110688112c98dd5bbd628ad4027ce5e366"
    "cs"
  end
  language "de" do
    sha256 "68525f4f5b37cb44c75bbc9b39e64ebdc82a378580c41eb26df2d719a3e1cf32"
    "de"
  end
  language "en-CA" do
    sha256 "e71c5f528b0455c3e1f311fb094247066ebdfa1c8710296dbb22acce152b4e66"
    "en-CA"
  end
  language "en-GB" do
    sha256 "57f5ae07f9b850a233120d28f61e6df25a56f5b290f708c59d55a846b43892de"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1170ac2f2a46f97e78faa1f13383962949cd1712024db10d45447edd3876d556"
    "en-US"
  end
  language "es" do
    sha256 "94e9bd6ef44327a2b8217c09411bf2a8e1debe444c46bd54e0fb7fc44cd26a8d"
    "es-ES"
  end
  language "fr" do
    sha256 "59f28fb1aef7939202425c49671ea059be6048d319a2f2922aadd5993ef3a5d8"
    "fr"
  end
  language "it" do
    sha256 "b69dbef430cdae54cda3c4c845941cca1bb0f5353de6df6b6d19d1c01884814b"
    "it"
  end
  language "ja" do
    sha256 "d55717445f11e9ca10a2eb62476ef120f6dabb833cb4a668e1d6940a7033a260"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c3ac40b72268ec148e8be66e38e56a327e0040a188413040ba2096eb8e643074"
    "ko"
  end
  language "nl" do
    sha256 "57cf8f35cc768f6344794feec7387d7241cd22725fb72cd966ccbb88599b785b"
    "nl"
  end
  language "pt-BR" do
    sha256 "9300a12d1f1794a07738cd1edfe7bea1bf96234bacfe3439d6c3aee8d0f92ab5"
    "pt-BR"
  end
  language "ru" do
    sha256 "5573ea2f6dac0a140d3185971b158e8cebf46aae6499b749d92f85f7cd6914f9"
    "ru"
  end
  language "uk" do
    sha256 "94fd19e07f51579cff26b318030bc293c464c4684f6ff3553c4c9b114ff29f90"
    "uk"
  end
  language "zh-TW" do
    sha256 "4b470ce4acacc8e6e23a359320164e8a854fe262e008be6e5d8064b1f4817170"
    "zh-TW"
  end
  language "zh" do
    sha256 "7fd5dbaf701277b01f070f94c16808b02038ab14436d117230a8eb60509afac9"
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

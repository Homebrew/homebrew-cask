cask "firefox@nightly" do
  version "146.0a1,2025-11-05-20-40-25"

  language "ca" do
    sha256 "d80309f13c5b4ef61252a774b1875aecd6fd6574f7c4f52fbc931f551dbf0101"
    "ca"
  end
  language "cs" do
    sha256 "68099c3910a7b4f5fc1ebae66cb0de17be2c419c2c35be797f098325f06bf4fc"
    "cs"
  end
  language "de" do
    sha256 "8dd8c56f1eec11a08050a7f6d80a792b881ef4df23fcd0982362ac90904238e1"
    "de"
  end
  language "en-CA" do
    sha256 "e4d302c0a829b94ea58d3b3c87ab966aecd3bcfafd8e3589cc72413aed153531"
    "en-CA"
  end
  language "en-GB" do
    sha256 "651af645fe5dbb46a5de471aebd15d0798e0935e081983ebd8c4374b08e70edf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "778cc3f106d492ef37ef0159df4ad597e549781e67cb5af1bafacc213329ac5a"
    "en-US"
  end
  language "es" do
    sha256 "f826f401f3cbd7aa8a6b8b713c084e60c5632c41f989acaa44d022b10c1c9b6f"
    "es-ES"
  end
  language "fr" do
    sha256 "db692727f28d9c2b0fc62a266463d1e540801fcd809448432c8e975e53b46bb3"
    "fr"
  end
  language "it" do
    sha256 "9e28694cee9ffd923734c8acb2fc078ae176458d5f478bece6046bc8830c67d8"
    "it"
  end
  language "ja" do
    sha256 "f3b3990fd87add8acd9ede867ce5a7be54aa181acd5a1c148f08cb2afb1918c4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "aef19870ad99c82545e4039ce9a80fb64e99863219afe5045ba0bd7b17187911"
    "ko"
  end
  language "nl" do
    sha256 "5ed1cad1151e073fdab92766deb4464423298ea8dd236889b3224c06f26ab6e4"
    "nl"
  end
  language "pt-BR" do
    sha256 "c2d3399269d473d9cceb4785b480b348e3248fcbbfe611bbbb14a169b96efa56"
    "pt-BR"
  end
  language "ru" do
    sha256 "a79a347233a087fdc3cb642702999a5f00a6fe1462901a9eddf140b56bd2f3c9"
    "ru"
  end
  language "uk" do
    sha256 "7f0dd2ecf380a008cc4b32700da0dcd04d229b33f97789fbad82cf5f052a4379"
    "uk"
  end
  language "zh-TW" do
    sha256 "08bc1dc72ff259ada1a0331a09c44969be634aa6e9fc3cab5aadc82390960170"
    "zh-TW"
  end
  language "zh" do
    sha256 "a15f183f6048478883bc9b9b844c239adbf8ff8e2f26534be7dd46f749820ef9"
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

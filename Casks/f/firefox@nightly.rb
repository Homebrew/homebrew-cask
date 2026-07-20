cask "firefox@nightly" do
  version "154.0a1,2026-07-19-21-13-19"

  language "ca" do
    sha256 "ada02f6defa521d2ef179d5d8ea42fce9f52ec318ddbda67c685d2c67d30a34e"
    "ca"
  end
  language "cs" do
    sha256 "d509ac4d53393fa7bfdf9e22252f35e02919cb3348b50417bde3f4e3b9ece14a"
    "cs"
  end
  language "de" do
    sha256 "7e88ea1ab8d4dd9f7e1be045fbcc4d243a120c8541daf502f54c23304eebff2f"
    "de"
  end
  language "en-CA" do
    sha256 "ef4430bbd07bcc6976671afdd7b52ccb3cc6bfc94ad9f96349aea7abb0cc8f5c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f2257d780a411ed974aeb5c6c4fdbb633842b278afda31347e5ab7bd644fc4c7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f32f88163197b01e44dc296ee509c06f01c3ef734c2823d5607a39b4186f7ba4"
    "en-US"
  end
  language "es" do
    sha256 "ab8c9eb7c943803ea3e889e2bb6c4a48c90e00d2472111cc29243a65b6b5b5a3"
    "es-ES"
  end
  language "fr" do
    sha256 "ba59bc2b969f0e9719c90a2c410e1ef289fa0317f4026f8a05e159926b4937c7"
    "fr"
  end
  language "it" do
    sha256 "fddb379ae2082be06d9e6ac1c0fc6325b48051144f6c2d69b85dd9550c48060f"
    "it"
  end
  language "ja" do
    sha256 "98bebe961b6878bb4abe6137b8345bcfae81d02baafff8395aca2a469e563d03"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "234cef05b5c01e5047a10cb93889437c2e3b6aa29d582c40d8632258af74cb9f"
    "ko"
  end
  language "nl" do
    sha256 "f1f92037b12aabfe012882de122d8c62dbd0eafbb73f7005889bb7d849bcb644"
    "nl"
  end
  language "pt-BR" do
    sha256 "a4f684b1eb7efd2a6e384d9c32c1c20f9f4cff3cd7c10180ca123e639445f439"
    "pt-BR"
  end
  language "ru" do
    sha256 "465daefeea5393e49526511b305c21c701f33011495f0a105651ef9069110baa"
    "ru"
  end
  language "uk" do
    sha256 "300b38fee82467ed1093c8ff304efe58cdc833ea6ac3f853a3addbeab957d84d"
    "uk"
  end
  language "zh-TW" do
    sha256 "da746d28b4677be8cb0f31401c547d2f1d61601b837af1f58472fd1a822df9bb"
    "zh-TW"
  end
  language "zh" do
    sha256 "52efe72d0ac18e26e344626ac87dd98e1eb4b7a483164ee35c6e5ae1dbed5b49"
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

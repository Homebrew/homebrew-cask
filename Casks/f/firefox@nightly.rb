cask "firefox@nightly" do
  version "151.0a1,2026-03-30-09-33-32"

  language "ca" do
    sha256 "3c06d18754a8e875476f4bdc55f6639d3f83a4864cace17b8f2edae71190d99e"
    "ca"
  end
  language "cs" do
    sha256 "d9bc31cac4276ec476f6fb732a9e202b462b6584f77cd511c66bfe96b2fe862d"
    "cs"
  end
  language "de" do
    sha256 "faad7e4e175f25b55e9382cf7b935ca69ce4ad18eb73dd40963c43e2905763ea"
    "de"
  end
  language "en-CA" do
    sha256 "3487d0da12da723db098fc58b546d5f61af0869132d447f50704416990b309c2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6fc2a51795b1693083f768773169c9b13ee469ab5eff76da0a9fb2982cc3239d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "317c0f10c5aa8b67ec14016cddef5ceee4d2c4464a3e6858071b12c437e5230c"
    "en-US"
  end
  language "es" do
    sha256 "534f34afffaebec3c054d1696bfb6b45fbbf1fbe1382eae6b14b33b630d40a5b"
    "es-ES"
  end
  language "fr" do
    sha256 "233e3db4ba55ffa845c7c6094c8a13832a8a73c3ad5576c0d08be2deb1a6bc49"
    "fr"
  end
  language "it" do
    sha256 "fb6f24269483a5bdefb0d15e568985c46ebf6957c931f6b5825b54535d571571"
    "it"
  end
  language "ja" do
    sha256 "44130f0353988ed7d004d3bcb0196f691069d9861e808af7f153e288c776e63e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d17408790798229e7281640508d1170a958b24376e237756230f8a56d34b69a2"
    "ko"
  end
  language "nl" do
    sha256 "c204f4636fdf5973f477160c0008cf8ecb9d69f78757eeecbcec8d63166ecb19"
    "nl"
  end
  language "pt-BR" do
    sha256 "32a493a1e5278cfffd8e73fb6a76a12a98bcda1956a177aae93bcfbf01fe105d"
    "pt-BR"
  end
  language "ru" do
    sha256 "d8a9e48ac11cdbc113d8547aaa0b7a864891bde8fbf9c31f859206f542edaa08"
    "ru"
  end
  language "uk" do
    sha256 "7d8414bfcb5ce9b5516b14c13d39d47811b40c80150b45e864830834e405e637"
    "uk"
  end
  language "zh-TW" do
    sha256 "70491dc2b8c9eac22e9392fb13763d343ee1a1553d7edb06d99100188fc05a4f"
    "zh-TW"
  end
  language "zh" do
    sha256 "241e1efe29858b79c6bc737f356d876b934461d777b50e4b20af365a0fcdef8d"
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

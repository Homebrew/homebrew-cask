cask "firefox@nightly" do
  version "153.0a1,2026-05-18-21-57-35"

  language "ca" do
    sha256 "bfa624ce06556ae6ec37e40aced9cba477a5b20cb81180d81acbbbca76235d3a"
    "ca"
  end
  language "cs" do
    sha256 "17cb366c4947700e278644c51410d8fc0c680c13ef52d4ea27c9a35a4e8428c2"
    "cs"
  end
  language "de" do
    sha256 "9c922ed4ad08bd301392232ee3b4197ae5bbd459941cb7fabab2e133c6ddb1f6"
    "de"
  end
  language "en-CA" do
    sha256 "b0a8e8c63fc1f23043b97515575fe377bab3692eb7c1df82cd2cc79e89bc564b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6bc65e6e5ab2983b355a7be86b265aad8f624820ae5eaa93a9446f33ce1fdf56"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3fe35274671abc2b82328a3c876f59a92150849e0a80f5f2bb1a0a1844339792"
    "en-US"
  end
  language "es" do
    sha256 "012d7f540699db6b4afbc1a14f6e178edebbc55d462052dbc31ad55b81252c32"
    "es-ES"
  end
  language "fr" do
    sha256 "618cd31382224197f00f8938c4c581fffd9def116beeca6cdde0bc2b5076a35c"
    "fr"
  end
  language "it" do
    sha256 "a05dcbc7556f0a5c221a301ec0a337338a389ab9c7056d4da8c9bc9264b58b11"
    "it"
  end
  language "ja" do
    sha256 "4da4545159e4b563d7b55d51f9ae72b88a922086708fe65756300151d4ca24bb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "60dabb7050250dd984740364fb48f79796cc4b87286b73b43d06c59a55728c73"
    "ko"
  end
  language "nl" do
    sha256 "3ab62d1d3fa759323ab51c3dc132f5f560050c18927f6197b49d1c268363f4e0"
    "nl"
  end
  language "pt-BR" do
    sha256 "caa29032d6c0f970b8ec2065cbe07e2592bf8cd7ab3c90dd3361030efd1809c0"
    "pt-BR"
  end
  language "ru" do
    sha256 "7bf5c1936969fe85e28f1479a05290e92b7c1b90befce425b5ac55149ef44d07"
    "ru"
  end
  language "uk" do
    sha256 "cd719ebb40276da660ac06ed10effb8b17377b28405271a5335f5d8af06a15f6"
    "uk"
  end
  language "zh-TW" do
    sha256 "cbc9c442ecd0e57f24b873f2f423881b9b98cf7144073b00026c2335adf2e2bc"
    "zh-TW"
  end
  language "zh" do
    sha256 "4e5ccd1a4c9caa9385eea218f4143598f573af02f1c4736aa80cb14e23b71bf3"
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

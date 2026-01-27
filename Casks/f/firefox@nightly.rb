cask "firefox@nightly" do
  version "149.0a1,2026-01-26-21-39-06"

  language "ca" do
    sha256 "79a7ada6dc6277a674ae06a33062da6039a0af9bbcf1af82185360c6249e0002"
    "ca"
  end
  language "cs" do
    sha256 "2b73de692c2bc0d294efe75a90f5fdf9d32ef51d0d8ebc586a28604791a40495"
    "cs"
  end
  language "de" do
    sha256 "2e4f78601dc4720f148682741f20a971eea3f0e71880e90c40505ef69a1d4e26"
    "de"
  end
  language "en-CA" do
    sha256 "1b9a2b05465950f23e896e9a0d7202ce7736a70e7f10d36b6e3b09a829ddd994"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a16f906161f4fb1e7edc48e7eebc839e023fa4a67ba723d66ce7728173c5d2c2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "236eeca6a66f39d5cd02680362d5332e008bbedcbf19c68534109a4a7d449a3e"
    "en-US"
  end
  language "es" do
    sha256 "9edd0f3730bc8236691deb0eb8e6eecbecbb72bbdf016345e08155e013883cc8"
    "es-ES"
  end
  language "fr" do
    sha256 "3cbcd491458cbc9c39880663b29a85b3e366fcbbd251b33fa9c97b6f03f3a968"
    "fr"
  end
  language "it" do
    sha256 "686a47f24b3e2d39c5cd9aefe99f5200fae1a5cc6d66a149bbaeef01ef848ec6"
    "it"
  end
  language "ja" do
    sha256 "20c772a5a9d4503df2c0deb89898464e39c3d699374eb7f288cd0c4fd58fd1b3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d2b90cb8059c9260f4943a29d72e51cc39b3b4a16b9543fe78568188ac9abcc3"
    "ko"
  end
  language "nl" do
    sha256 "0f7ec9202054ef43a6c570f1ebfa25053991a3e39b80d504ad218eff40071e0a"
    "nl"
  end
  language "pt-BR" do
    sha256 "0e6b6d5afc73eb5d8914df8820c2455d1258e7766366e9068629098bed3d6559"
    "pt-BR"
  end
  language "ru" do
    sha256 "6ac241cff3f39f7a8b75ed0877e0f74f2f8c020fa966e41f0dd43f14003b8ff4"
    "ru"
  end
  language "uk" do
    sha256 "6133b1079a24f2503841c23a43841b1622f2fcdf34d3480df617e988d054fc26"
    "uk"
  end
  language "zh-TW" do
    sha256 "b1db49a4213d94122a1792208d3c85290087cd225e2a9399abf6f879ce8032fa"
    "zh-TW"
  end
  language "zh" do
    sha256 "0d2d09df24637ec20d6554dfd4c2f7a3ab50545e08ac0d8a3b96af9d4eff71a3"
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

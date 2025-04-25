cask "firefox@nightly" do
  version "139.0a1,2025-04-24-20-50-49"

  language "ca" do
    sha256 "52366368cd1f4f0fa08d5fc223f6691e568fa9737fa34c3b32488553c3b6f9c6"
    "ca"
  end
  language "cs" do
    sha256 "1b405d77e6a76fd7f926d8167a6d6d5943a9110f5f924186d22ed8b6ce39df22"
    "cs"
  end
  language "de" do
    sha256 "b78bb7c14ce895f6aa11205118eb3f4fa62170d2be548062227133b773dc39df"
    "de"
  end
  language "en-CA" do
    sha256 "3c047b2480476bfc7587809f6d139727f1bc3ff7e047107953011ace81354d8d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b20ca182b5b207374b517c51f2a310ffa7d35b6de0511c82f2d0a41ba1952fe8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6fa66c5b91767c4b4f4edfff9b0ba1e0809c12dff1d473032d00166fc5cbea9a"
    "en-US"
  end
  language "es" do
    sha256 "fe6b0fb15ece25d461b948c840ace941b5d49e1d38ef39b894bdf63fbfc077e0"
    "es-ES"
  end
  language "fr" do
    sha256 "432b9d5358e9a0673e756d77ccff5e5f9043b42dd5990cfe4d5285cc4ac7a36d"
    "fr"
  end
  language "it" do
    sha256 "21ec89935fe0b2037382435ff93b72bc8915dd168dc304b6c720137261b282ca"
    "it"
  end
  language "ja" do
    sha256 "ca1c5e89f50b2c53a2a6a2d286f88f432949e93751ecc6099bbfd5539b4d1fe3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "27d54a5c1cb5aaefeeb48ef8b87fb469c668805eff3a1a2dc82bceea6fc5a06a"
    "ko"
  end
  language "nl" do
    sha256 "26ba2d3644f19d17d081b618e88aa84191534bd0fd9d386d940327281158d68d"
    "nl"
  end
  language "pt-BR" do
    sha256 "9eb8bed48ee53d11f23544a2c2a56a588bb475e22266bd7cdc3992ae11c68964"
    "pt-BR"
  end
  language "ru" do
    sha256 "2f14edb094f008151cc9952374bcffa549bcc0f2b0c38b542d9c659550a888d2"
    "ru"
  end
  language "uk" do
    sha256 "fb14e77ae4d27c1fcd6b97f8972f6414abaf9dc5bd595698deeedfb40f29a3c2"
    "uk"
  end
  language "zh-TW" do
    sha256 "a724fb339cb3c7fd113d38f830e7bbb3cddde6eef0951fb1ec4fa1a17d53eb3b"
    "zh-TW"
  end
  language "zh" do
    sha256 "3d2bfbb84e7f609a3e070f95a44a83ab1f45f0759183a77b15ef48001858b896"
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

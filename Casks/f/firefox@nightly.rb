cask "firefox@nightly" do
  version "149.0a1,2026-02-07-21-14-41"

  language "ca" do
    sha256 "bad1686179fe3f8163bed232e349ccea7ecc54d5aea5f0a56d3a756bc7e1516a"
    "ca"
  end
  language "cs" do
    sha256 "ee86265bdfd451576942f2d25004895f4fe295fe1767d92826c5a4c6db5dbb36"
    "cs"
  end
  language "de" do
    sha256 "f09d108bd1b2d7ed888c252493e0d871494e642e766222b0739b29a0e5000fde"
    "de"
  end
  language "en-CA" do
    sha256 "ba3ccc6acff09e85462a2ec9241543d9652b3485d04f0527c5c8b5cd1ba559cf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b7c8466821c63a36b8d2a44965e1d93e1c3e7b0feb045c6bd460391deaf1f6ec"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1918ad8a7823f863edd0fdda8600ee4622927bc20e3d5751ff0db7255cf39fd2"
    "en-US"
  end
  language "es" do
    sha256 "71704588e1bdee22b3319ae7b8679d50f53c6aac1946a65d758b203ff158bc71"
    "es-ES"
  end
  language "fr" do
    sha256 "2427346b174c56377dd8efce3af4d36eed51cca8ef1d37d6ba1cf10af5033f62"
    "fr"
  end
  language "it" do
    sha256 "bb90d2b603580fad465e8dd5c4ccf6e2f972fbdf046d35fb14c0580fddbd5e3d"
    "it"
  end
  language "ja" do
    sha256 "316854780f4d4b43733ee12c86516823a36c4e3d90f07a6fb4a605ff8e8c5086"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "af9dccefddcfca3791a413a999456df1fd3fd3682c0dc0ad45f1869960828d10"
    "ko"
  end
  language "nl" do
    sha256 "a7e91d1e0a57f080505f453086e0cfd77eef1f0c3f5aab8f2a7ff01b387ebcb0"
    "nl"
  end
  language "pt-BR" do
    sha256 "be28340be09f65c52abeaa14fe8ec4aaa381fea6f253fd02d61929f3932bedc3"
    "pt-BR"
  end
  language "ru" do
    sha256 "a3b115692eee3bb23996aae0dbdfe8ad2ae5edf2cd96f61d46388e3bdaa73a6f"
    "ru"
  end
  language "uk" do
    sha256 "5075228aefbd084daf37f91c386af6eea9941b8b552d6f496a14535dfb0e9632"
    "uk"
  end
  language "zh-TW" do
    sha256 "faf62637b67732d4ad6b6343d991796f425ad83efd330a8d4f6f722c0839daa4"
    "zh-TW"
  end
  language "zh" do
    sha256 "c75f129ce56fa7080ee8caf870b4cb15ce3939ec5876d5e88fda4613c8215ac5"
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

cask "firefox@nightly" do
  version "158.0a1,2026-09-14-10-26-27"

  language "ca" do
    sha256 "085b6b30f93a87e1abb510ada1a473039ef5d21a46a2c63579021f7a307e7945"
    "ca"
  end
  language "cs" do
    sha256 "08908a8c0087421c3cbec2588d3cb68cb5191e4baf2a07c4b7ecfe24f5c1149d"
    "cs"
  end
  language "de" do
    sha256 "23d8ef02bdc3bfbd1815d27366ae91353b09230ac6ebd5109221d50d77bef689"
    "de"
  end
  language "en-CA" do
    sha256 "8fa8459e4461c834b20cfdac6c31bfc33986351160d15921c685019ef0b1353a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0859d9781e3619a6d8713fb98c9f4634240a023d7bd79342617f904b59418ac3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1fd05d015374996a8f33b678a71bbff10f329e49f50451992f26f07264792720"
    "en-US"
  end
  language "es" do
    sha256 "efb3868547e175ab8e5ed5ce88df3e77926e2f5a26bc5fdf11c463cb3d51b92d"
    "es-ES"
  end
  language "fr" do
    sha256 "33b99f1e71a4e3a767e1e99865b265e234ee98ba3ee2fe18509871147803e190"
    "fr"
  end
  language "it" do
    sha256 "2f7f846e024cf653965de2e7c773bbb3b004c64b7acf3c568ceb3a3621848799"
    "it"
  end
  language "ja" do
    sha256 "c4ae20c859b8204f0e59066dd2cdd7d71d0970da2e7c06778fcfab4b5752c7aa"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ee8ca34e6a2d3cb5cd9e3fef6144239b499dd434450daef006cc298675e53371"
    "ko"
  end
  language "nl" do
    sha256 "ebca32c0042552e44f050936790ef63d113ca173df10bbc7cf642bb2a86b74b8"
    "nl"
  end
  language "pt-BR" do
    sha256 "d0de0e5093d0a9876e3743f9031a281e032cc624ff0a1e0a23729fae17c4075f"
    "pt-BR"
  end
  language "ru" do
    sha256 "35df5225cbbacad8b7e3e620d1f27ae4309a92def0e3615ec6ad54d3e4574d85"
    "ru"
  end
  language "uk" do
    sha256 "ba4aeb3a9824c30cd51931eef304a938be25353b220b202ac3f853bc5cb0becf"
    "uk"
  end
  language "zh-TW" do
    sha256 "ead0f999655c269664619cbc95f067673c55a5a4a3106d52560c257dfaca4e3b"
    "zh-TW"
  end
  language "zh" do
    sha256 "1872ce45d311662356d2a6280a7b7ad1369a84acaee4e45a0d42a1a8224cb8c9"
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

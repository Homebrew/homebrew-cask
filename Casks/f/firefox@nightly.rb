cask "firefox@nightly" do
  version "152.0a1,2026-05-18-09-37-36"

  language "ca" do
    sha256 "a50af26989ca065c75e54feb491c8b3e1d4703a67cfd3b8f1f92de1d32f274ea"
    "ca"
  end
  language "cs" do
    sha256 "00d7c66f916098439a3ca153d351914984c14a502f1ef91b4823cddc4bd4a418"
    "cs"
  end
  language "de" do
    sha256 "badcc3a07a755843cc09960fe5595b5d184fd84d6d0dfda935decee6127cc0bf"
    "de"
  end
  language "en-CA" do
    sha256 "e603541d84e11b4c22b763ac0ba00e511287f5750a598ede8b2a427b84a4ee9a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f778a3f05cd511e475df37abea488b827b2fb08988ded64cd89e5e0ac900b27b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6aedc1113c46dd762434dd416857f55bdd016155462a31e32a73cca876479017"
    "en-US"
  end
  language "es" do
    sha256 "1adbbfb979d7b15fed33704d6fd1dfbe0cbe47a6cd937bd477828629b535336b"
    "es-ES"
  end
  language "fr" do
    sha256 "8b6715cd43ac688ad9624fc86eb46ef252818f0f304c38f8244e3667c579eee6"
    "fr"
  end
  language "it" do
    sha256 "445697842fa0ee57590d3a9787647f73a6a36075cd3877cee788f352013c79df"
    "it"
  end
  language "ja" do
    sha256 "2ccf5f4204ffd1134b4cb195f2722ed049ec573bc23abe1c0c790331dd7260bc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "81a0bcc30a6a7631265bf32d894a7b9eb2000f2119d8bc9682793f7b89a9a076"
    "ko"
  end
  language "nl" do
    sha256 "04647e070b8eb1b95140428986f4c1d6838d24db1cea84c9f839f22ac8054818"
    "nl"
  end
  language "pt-BR" do
    sha256 "00e797fa85bf828671a7480ae3b24589a53836b41717c4dfd2f355db8e28f7ae"
    "pt-BR"
  end
  language "ru" do
    sha256 "b49bbca3c3bca1f24fefd0fc74d9d6f769939fd12fb342bce7fbc7cbf69eb2a5"
    "ru"
  end
  language "uk" do
    sha256 "ed48c7aa370cf6e159b46f1f9161154ceb8f250127c5c90d557e54c0eaf512d4"
    "uk"
  end
  language "zh-TW" do
    sha256 "31bdac83e2747d8b9c953bda90ee9b0dd91547aca0c042340de72af028e833ac"
    "zh-TW"
  end
  language "zh" do
    sha256 "85744c115f64b09e84bd0fbb29630a6621858171f9d19ebe0f2a6a5f360f21cf"
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

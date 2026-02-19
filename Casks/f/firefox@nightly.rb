cask "firefox@nightly" do
  version "149.0a1,2026-02-19-09-45-51"

  language "ca" do
    sha256 "480f2834a556644bc69d1732b32c01851e94afa3ad89a0801ca81382264d7d17"
    "ca"
  end
  language "cs" do
    sha256 "694e8d3063606f59492d3e3378799b16e1bfa9cac250cfdd97afca162348ab07"
    "cs"
  end
  language "de" do
    sha256 "9b3706cbf94ab37ca97c913d72b5c1bda2834c0a430c716d374d5ab1d3a236a1"
    "de"
  end
  language "en-CA" do
    sha256 "f381e772a8c1b17176c358a84338c9df97c9be960490317c2eb30daa0f7af383"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6feacb320492c4f1bfd7af47cb393e5963e7b707cd6e46b40cd56ad35dd53aa9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e79b907e51a61b72f7a4822de0b63b19710d6e36efd9a1561e5f912d21129f60"
    "en-US"
  end
  language "es" do
    sha256 "3232b36f3e4d2dac09b465f9d34c707cd97516638ff3254cec3deb9ef8cd46f7"
    "es-ES"
  end
  language "fr" do
    sha256 "2c1fd5c2aed5c784fa78782bf8930287193d7c8201642790895f0695326ffeab"
    "fr"
  end
  language "it" do
    sha256 "8d141c95672ba4332e7f14130d0931cc7fcc2f05397a513678bbf1ea360361c9"
    "it"
  end
  language "ja" do
    sha256 "44c83a445704f3a5f2f6c9c8ca7372aba43cf544b15f2e60e6c991fb7c97ffdc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "da0658c7fc6e86c0b587601c67fa4b1a5422e3cdb873f3db7b7138121c8e1f58"
    "ko"
  end
  language "nl" do
    sha256 "d91558586dfd2a9d0cf09868129cb3c92b137732d6d9db22a61de70aad63a66d"
    "nl"
  end
  language "pt-BR" do
    sha256 "d90626b3b6604aad763646e228ae8c362dac493952cc2db9a99185e507da6dae"
    "pt-BR"
  end
  language "ru" do
    sha256 "f94a8b4a5d5921cac414ab626f19f103b563f2a6e7ec036e37abd99c027c17c6"
    "ru"
  end
  language "uk" do
    sha256 "efb5d6eafc62a83defa67e64ee30fbca6f94dc45b88e0f9b35059560f67c63ff"
    "uk"
  end
  language "zh-TW" do
    sha256 "b2f4284e5b7e8b888710a69dc31e8fdda843a653d936b8f376d526f95858e7c7"
    "zh-TW"
  end
  language "zh" do
    sha256 "90d20d324079c847e9f12f06643077a845da908f5e7bfde5ce75db122128c2b1"
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

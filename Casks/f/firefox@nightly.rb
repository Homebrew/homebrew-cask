cask "firefox@nightly" do
  version "154.0a1,2026-07-19-09-17-21"

  language "ca" do
    sha256 "64617c8c27204d2006f9c029a08200e28577c7915d8125a2e97aa7fde053177e"
    "ca"
  end
  language "cs" do
    sha256 "fb3dfaf8350762f76590dcd351138c22cd44ab3e1e1a0c15b7d63d2b1156694f"
    "cs"
  end
  language "de" do
    sha256 "233a216bddfeee3f0178686e856faa8908ca41470545d1b2794e647730c3a9d8"
    "de"
  end
  language "en-CA" do
    sha256 "75eca04ce8281c3a96394e59a9f967bab6d59c0ee30562e1a10f1d6a2f3b5c72"
    "en-CA"
  end
  language "en-GB" do
    sha256 "33d076398582a38e278731902bfa19cecfa4835e248beda7f00636177c5be551"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f24f6fc41dd57c59faa366f665b1b53463f5fee6f30807607db6414c20a196a4"
    "en-US"
  end
  language "es" do
    sha256 "07caeec224d5c1e0ae02d876c9bac74792a81ae108cebaddd4dd834abb6db992"
    "es-ES"
  end
  language "fr" do
    sha256 "ec4713d8f4638a00ede3e2d1c96240e49dd82c4a0a4b7576f6e46f51071de63c"
    "fr"
  end
  language "it" do
    sha256 "38974630dd5a86431cd03d76f8030657d22ddf72dc3c50488ac413fbdaed6be6"
    "it"
  end
  language "ja" do
    sha256 "220e366fcbb0f72e029a1838a955f2f563c4d6de102ee5a4959d7b5f301f1540"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fe9500b41f915c09d624f90bc9327360593674b4dbafea18ca2e1e490b1946de"
    "ko"
  end
  language "nl" do
    sha256 "ab24584851a9c20c2a2e3507fd84e74b9468e03cdabce5376c456123101409ba"
    "nl"
  end
  language "pt-BR" do
    sha256 "ceeee54865a30082a5d40baa2774ec0aa341038d1ca19a5a7e5aefe8f78228e5"
    "pt-BR"
  end
  language "ru" do
    sha256 "1190b7886ec9afd977691c719e7634e51045d293ec6323dabf2498d4a0c6096b"
    "ru"
  end
  language "uk" do
    sha256 "8e84631d53ede111b4bc949505315484bfed9516e384d15481d697b04ff17526"
    "uk"
  end
  language "zh-TW" do
    sha256 "0bd7d6943f73cd43cc122830987992b80ed349cef469cf971e7abeff70af0280"
    "zh-TW"
  end
  language "zh" do
    sha256 "3a6b2d6c56ded684337ca5b6a4fc12a5d0bcb1f30df5e6edb6e13ef336db8c93"
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

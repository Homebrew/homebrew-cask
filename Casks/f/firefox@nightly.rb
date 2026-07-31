cask "firefox@nightly" do
  version "155.0a1,2026-07-31-08-57-38"

  language "ca" do
    sha256 "402f14148231a04280efe1275d40c387b82438686ae2942e04ef7456b1ff2716"
    "ca"
  end
  language "cs" do
    sha256 "eac4e5ded071faa413ee21e03f84b1fb1aaf719c0b1daa349ad006f16bfddb3c"
    "cs"
  end
  language "de" do
    sha256 "faba93f6ac0662baa308859493894139fa9da482ae9adfbf8e56909af40e1970"
    "de"
  end
  language "en-CA" do
    sha256 "1311dcde1fa5b16ba28fa294393b47add40772fdb9d47ff05f97f597ef7bb9ac"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5c564d59707ac3aadcaecb3f0896dfe6b3efdcf93192e2175536cf6517a32234"
    "en-GB"
  end
  language "en", default: true do
    sha256 "926bafc758a9d912c00dae9f6cddedfcb8fb7f0c7d996021823343802e318641"
    "en-US"
  end
  language "es" do
    sha256 "ad59659d7f2e046a397a0bcdd9248a52075beac36f3e317244cdd2c805aad975"
    "es-ES"
  end
  language "fr" do
    sha256 "f6964ca70d0f42ef925d7db8e3faa86ce3188c0b03d62a1b3396bb79affae798"
    "fr"
  end
  language "it" do
    sha256 "35b4980a0303c964c7e8d5245d30760dcbe6323f713b5d76b4223aac22718e58"
    "it"
  end
  language "ja" do
    sha256 "413bc40d7789d08df7f37176b945a42d6f9ac605c71f557a2a77505db9766ea5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "035bea978567cfdbfd6e1ad2503b8c6f5f262121aea33adf149d51ff4258a9fb"
    "ko"
  end
  language "nl" do
    sha256 "0ea8e71de0c26fbd476c398e874259c497bc8be554888cad5cb2e51b37ad12ea"
    "nl"
  end
  language "pt-BR" do
    sha256 "26152e098f82b96cb189f12c677fe7b8325899b4672abe18cba7f5c4a0aa9ed5"
    "pt-BR"
  end
  language "ru" do
    sha256 "780ca6e497950caf0499d5ff9783abb26388ae1de3281daea26c242d347baeb5"
    "ru"
  end
  language "uk" do
    sha256 "bead59c909d473be0551f28478be627bc2332c93237d6a6fca42dd1c12b6a09b"
    "uk"
  end
  language "zh-TW" do
    sha256 "7d865408317da8f48e05eedd1a4b4d27164654409fc4cb4855191522ca3591bb"
    "zh-TW"
  end
  language "zh" do
    sha256 "f3964ec58a293461202a56a3faac6a28042faa3775c0c04155e8a5372a64cc58"
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

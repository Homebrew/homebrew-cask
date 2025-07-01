cask "firefox@nightly" do
  version "142.0a1,2025-07-01-09-15-43"

  language "ca" do
    sha256 "170cc13185cb36470f6bca5e5586ba720a2bcc72ce5a2b4454c70315d91a3a65"
    "ca"
  end
  language "cs" do
    sha256 "eb7c7b13ba3dae1bfae54875a61755e3331dd70b72566995b7c4c35fddd7c4cb"
    "cs"
  end
  language "de" do
    sha256 "fe630ede0c83f3a7551b9b66e1bda246e9d6a12f211591fff6d3516ec87ecab8"
    "de"
  end
  language "en-CA" do
    sha256 "5a35924690cf44d5444cb489431c229fed7941ea3236da377b2fbd8ec1eb8b7d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c8c3e71f5d048faf6783e4e941134541b16a6147bef06cc3b3f34886bcfa3910"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fccb203ed70e510b2099ce0bbdcfd5bba5ef4c07c88bb1581dacb27dbc225d17"
    "en-US"
  end
  language "es" do
    sha256 "2b8f5424bce1c0a2823c059928680792e90a72bd124a0455172d45b0abfcc083"
    "es-ES"
  end
  language "fr" do
    sha256 "ceb90b798b435482eed4d42de04902eb3f932d1783f2351d2e34d5185c245f36"
    "fr"
  end
  language "it" do
    sha256 "53eb748a44db9c64fb9e9479dab231ad694beeb4817b3ca5014e426ae27d319b"
    "it"
  end
  language "ja" do
    sha256 "654a60e63ccde6323aa7ca319df451b8552562d324a22e10eee3661d4fd44f27"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f5eda83ec3d0a2e9a37245373a070835798fdb2d429fd50bc200506082f7b242"
    "ko"
  end
  language "nl" do
    sha256 "2b0a988a4ad8e4a5c66522efa150b5811c0f5aca2e9849b681818d3f14835d1d"
    "nl"
  end
  language "pt-BR" do
    sha256 "6d20ef10e6d04b218ea606b6f6c49c9a2c8e11b737d1221add47c5c466a40fa5"
    "pt-BR"
  end
  language "ru" do
    sha256 "253afcd28a1825f97739b6e43046b80f8cc1de6eaacb3cfed43a671a259727cd"
    "ru"
  end
  language "uk" do
    sha256 "cb0c63446582802eae40b39979de77701d9446ace358635933fb841b9b76d0a1"
    "uk"
  end
  language "zh-TW" do
    sha256 "dcee2161d15d425b01593f31d734d0e22df74586a9fca1037b26498f72b8d034"
    "zh-TW"
  end
  language "zh" do
    sha256 "e49e200b84333dc4c32533bd56a6e414e53f95d4480d97d5170bd6fe673ed2af"
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

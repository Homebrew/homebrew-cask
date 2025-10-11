cask "firefox@nightly" do
  version "145.0a1,2025-10-11-09-05-04"

  language "ca" do
    sha256 "1dff9760de7cee9c8eb9d1d49b55eac41283ee548a3897e32f20301da0134b7b"
    "ca"
  end
  language "cs" do
    sha256 "b929b7ebccf9d5265f064091da470def6b307a12fab34bda5b86a236d974a9bd"
    "cs"
  end
  language "de" do
    sha256 "e0a8d336a86ff62b390582b7424980651b0911dbc4b0ade693ee6867c87b92a7"
    "de"
  end
  language "en-CA" do
    sha256 "0fd54366cc1b57b503d4844beeb01f958a24f8b59dd9e91531e2d2253d13d2be"
    "en-CA"
  end
  language "en-GB" do
    sha256 "229d3487b49528c182f76a0ca9064f243e138d940dbf3c1d3810265d2e6f8eb8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6dee5e212dad69fa00531d078a3e0874ed89c4fedc19e3322711a0e9f4e4019e"
    "en-US"
  end
  language "es" do
    sha256 "d5d75aa621fe1fa76ed6b174ec6c79d155b5f79744bffdbd184fe7b6ba32d3fa"
    "es-ES"
  end
  language "fr" do
    sha256 "264dcf441cdb39371673d3be49972cfcd6698beb04b7ab8ef5aa730304b12b3b"
    "fr"
  end
  language "it" do
    sha256 "f97cd5c10e64884652a8fe58fbc5f239a1e0a98c213bc09a44a112ac9ff96f27"
    "it"
  end
  language "ja" do
    sha256 "b0c9554819098c591a73f71b48d8483840293034e9a9728276dce61ab4ba51c2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "70eb00d40a412c6d2621fdd30e1df455a14ec46b9bcf3c137a286e2f58b9c1c1"
    "ko"
  end
  language "nl" do
    sha256 "949ee02558dc7bd4d763e1a210d89dd581a2e932a8cfcebcad16b1805c92b411"
    "nl"
  end
  language "pt-BR" do
    sha256 "7e82aaae82ed0367180a37d12f40bccb9fbadae8766f415bfe9f1b085e141238"
    "pt-BR"
  end
  language "ru" do
    sha256 "93fc263ab9ea7ee9a95f3abe3324bc3312c43e4b3141be18879703be2bd94608"
    "ru"
  end
  language "uk" do
    sha256 "fa84f3a5cf19e7e57de307050ea838e1446d834b31c333fb2ef211669944b1c0"
    "uk"
  end
  language "zh-TW" do
    sha256 "3c04feed7064eb1cc99bb7a7c62c80c571f88fdb2ba3c80a23195c75978b4c10"
    "zh-TW"
  end
  language "zh" do
    sha256 "bd67bd0ae65b87b99cad8316e4f3e60de429965e15cb2918fceefb12f732fa8a"
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

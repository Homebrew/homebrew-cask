cask "firefox@nightly" do
  version "149.0a1,2026-02-07-08-59-12"

  language "ca" do
    sha256 "a793b93dbb06531c085ebe0926be18c264fe4962ae3723ddaf5434fd2c5126d1"
    "ca"
  end
  language "cs" do
    sha256 "574b060b986321e4863ef92e3e09329b17d5330b11a8f7ee67c65e367d56e52b"
    "cs"
  end
  language "de" do
    sha256 "f485980cd9321175cad0fe8116a6091563c9c9e5bffd5f52ca44d29a50920b2b"
    "de"
  end
  language "en-CA" do
    sha256 "e214915aa1525649ba7976f1120cfa5f8cbeff76c51c75470a68a51f1ae9ed9b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "046a0fc394037f9fb5fc0fce32cf0147e8932bd9f8bfe8afb60a6a319234a567"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fb697d73a0907228cfd035369780ea53e581ab4049357c6fbe73e56ff94b4dd2"
    "en-US"
  end
  language "es" do
    sha256 "0052b30e625f2e5fed11039047514b6a4dfcb671808125323f5882d52d9ab924"
    "es-ES"
  end
  language "fr" do
    sha256 "c24259da92bb7b4bd692cf62511cd1be4f0b8a33007f12521ad688b80f9cd9e8"
    "fr"
  end
  language "it" do
    sha256 "4a0df3631b4416519dd38da69ff29b54293ff56229942e7e55cbd63b8d90b6a8"
    "it"
  end
  language "ja" do
    sha256 "f9e2ea97a7822f5504bdc6b993a885a9a5954b9612e7e1e90f67449f1cc81fe6"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "372e56a5921de835787f680b50a8b2a5f0f00a612c7e1bcb3899412e1c314007"
    "ko"
  end
  language "nl" do
    sha256 "c2b9b854ef1c6ef38e98e4e62275af1f31d9a5ce724e58d560a13441c57d9035"
    "nl"
  end
  language "pt-BR" do
    sha256 "745e3c498635b238d983b608580531763709b2c94ff2ee759f4e05b2d4f45d84"
    "pt-BR"
  end
  language "ru" do
    sha256 "e31c5810b7cc2a977d32b09a852dd0b9cb9923424801244e9242963372defcc8"
    "ru"
  end
  language "uk" do
    sha256 "b620f5024fd4c044466be407d5ec722a134698abbedf696eb808e06bde304f65"
    "uk"
  end
  language "zh-TW" do
    sha256 "8591897d982845a7443b877014f505468d8b2243b0fc08b1420189b39a590e81"
    "zh-TW"
  end
  language "zh" do
    sha256 "a81495c7cb286410c8aa974ee7291ba57a89142e73dcd47b4c3f53395b5983e2"
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

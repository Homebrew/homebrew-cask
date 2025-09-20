cask "firefox@nightly" do
  version "145.0a1,2025-09-19-21-44-19"

  language "ca" do
    sha256 "90616534a8685b9146d9334ba0bb94185841396608b3af38c6b3afb245c30b67"
    "ca"
  end
  language "cs" do
    sha256 "35b82db63c250392e27ee0744ab2244c286ac3034a5ae67f96d7a8cea1980762"
    "cs"
  end
  language "de" do
    sha256 "e97d485e79d48d084142a4ec5f747552187da87ff3b967c4697c700178ab992c"
    "de"
  end
  language "en-CA" do
    sha256 "38ee20dab9301f01084eefdf4c37f39d898a3f8447c161b967d6f623ec581bb3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "74dbf040213140b526e1e8fbca351d8c9a2e7fc29ed0195e5c7e406887a0f6cf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "55665fa804bad8532f4550e7c710795c22606ff018cf46a64fd70ed23fc8c7db"
    "en-US"
  end
  language "es" do
    sha256 "23d3a6255b955a2186ae159ac0f5a84026d87031f7917066f9613e6baa09f743"
    "es-ES"
  end
  language "fr" do
    sha256 "502ff7c6523c96b9321ce7a7a597d503c7bac4b658f5e68fb4d69cf95ff00e12"
    "fr"
  end
  language "it" do
    sha256 "e4faf54e48262d60487b8d0cffc27dc41d0bd20968222b325b102bec2cebee90"
    "it"
  end
  language "ja" do
    sha256 "87df1743d27c1d490fe8d5767c8bcd9a9820455fcaa89477fc2d011451a0221b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "251918be698fb4962c7a0a46c38e52d10532e8d8eb93a2f9ce190047ef34177d"
    "ko"
  end
  language "nl" do
    sha256 "5cbd3a37b6708f67028971ac661d015366806b9e46b99b690e8877314b1d9fdd"
    "nl"
  end
  language "pt-BR" do
    sha256 "c470795fcf44e377f0f61036424c5352571a8781e75dd3ef23cf9ab7181561db"
    "pt-BR"
  end
  language "ru" do
    sha256 "3a6494fce9282b9939d761a5beb1df6f1ff50b02bac3939300fa5c158e70a908"
    "ru"
  end
  language "uk" do
    sha256 "2214c429d07db1b8a5082d64edec9c97fac0e6c6c9f51b0a2c7fdf7ce628377e"
    "uk"
  end
  language "zh-TW" do
    sha256 "5c8f529e6a83fe1fcb4e3fe1bb22e81c9979d2a1ac5e7b684c7d2b3aeeaf9458"
    "zh-TW"
  end
  language "zh" do
    sha256 "2fd862b463012637a45337bd4b500dcd223c0bf8da7ebf5593a1b9f47f25c037"
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

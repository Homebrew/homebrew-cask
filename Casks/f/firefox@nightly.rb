cask "firefox@nightly" do
  version "148.0a1,2026-01-01-09-03-33"

  language "ca" do
    sha256 "d0fd6a3dd132c00ae35b03ebaf850008bbbbbc50ebabfcbe3664b239985b8bc1"
    "ca"
  end
  language "cs" do
    sha256 "f192c74628b6766be12672d3fde50d77221a145f18e126547ab31343589ed707"
    "cs"
  end
  language "de" do
    sha256 "968f16179f84fadc39a5043e166550016462b0e2042d5282eda40c2aec71c3ad"
    "de"
  end
  language "en-CA" do
    sha256 "bd256c439c50f8b353a91dcc9c53b7c2340af8ffba03956bf18046bde5e06606"
    "en-CA"
  end
  language "en-GB" do
    sha256 "08c732378d444971c43f37ef35c96b6d5c9e8749445b6fe759d0e463aa1e3827"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6fbf8cf1d78668e807c12da6a45d6d770ab2c14d41ef9dd077747b0ed766d37f"
    "en-US"
  end
  language "es" do
    sha256 "7cbe4fbc48607a8349ff2dbda52ecceca1864327a1d5135faf821397a5cf0740"
    "es-ES"
  end
  language "fr" do
    sha256 "292d323986e83336841500aa0ebe31798d91bb24c72d6efc0cf20f207ff04715"
    "fr"
  end
  language "it" do
    sha256 "29ecc9bdb5156ebf6fa6d0f7a33a4cc4bfed623af943af3794f654e5bc52139f"
    "it"
  end
  language "ja" do
    sha256 "beeb4e1c847ba0efd48920d58f9365394e858f75b3703e995c8b1459dcbb6b8b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "28d67f854406fa82e34f65f7b74f3a905343aa046b4057411e6cf5b25b51f9db"
    "ko"
  end
  language "nl" do
    sha256 "a6bca25fe4b206ddbdcda9241d6c39036920ed7f7e21abcdb679affcafc14404"
    "nl"
  end
  language "pt-BR" do
    sha256 "963210201f642d9b2bdfb1b589ffbd59805a811336fcfd3140a5c945fd5f4060"
    "pt-BR"
  end
  language "ru" do
    sha256 "7167abbd44acbf2d7ad3ef1640367ed9c7a58299e043b1375bddf96b83581d74"
    "ru"
  end
  language "uk" do
    sha256 "4e5b04f4caaace68422fb0db2cf8e19b4c46a6cf57b7766b733cf6e6091796af"
    "uk"
  end
  language "zh-TW" do
    sha256 "f3a2e5e911c9cec7c3ebcbec98e461fb52f0e330b5c3b015fd86a5c094314691"
    "zh-TW"
  end
  language "zh" do
    sha256 "a4b05df92955fb4952d0e8eaac55e5b5d73ae9b2cd7883ae2ac4fb7dd38c0773"
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

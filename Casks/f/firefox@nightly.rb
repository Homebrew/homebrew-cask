cask "firefox@nightly" do
  version "151.0a1,2026-03-30-21-36-24"

  language "ca" do
    sha256 "12300ebb5caa8481b5713061454c65424c8c831996d8e06e169ec8594e6854f1"
    "ca"
  end
  language "cs" do
    sha256 "a7f3a8690b035202cb4e6d87749cae163cc1b1cf300fe36ebf6b183f8c18d75d"
    "cs"
  end
  language "de" do
    sha256 "620f04f9d8e227793984f60bf8c49b58d09cd2620357ab63ae5a6c0d9e84d5c9"
    "de"
  end
  language "en-CA" do
    sha256 "d35789330b5b655b1a845caf6d77a76a7c755c5b7041423a5dd41564330e56cd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3de3d8a75ffb8f7b647978f77dde0927f0aa2ec735590abb6eac4674ec704fbd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f4d7f214b1fe4082189029a53c124eb3bfb8119841543186cf01682d4ddf2c6e"
    "en-US"
  end
  language "es" do
    sha256 "6515550e3f96c5e7dabab3b458dbb21a0f7baf04afa2317fbdb4544d8272b7bf"
    "es-ES"
  end
  language "fr" do
    sha256 "01f140a4ee618bd50820c53fa3a60c94643e421c155811d6836abe7809452f3f"
    "fr"
  end
  language "it" do
    sha256 "45d923ece27d2b01766a9c7adc0cf95ed158c2dc29780e483b5b3c1a6fe39e5a"
    "it"
  end
  language "ja" do
    sha256 "1a40e2278c9665c04875605822ef9fa5406758e2d2370e85f547881334611f6b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3dbf1e30cf66794e7e902cba6ef7fdf87da67c9fa46233cd44ea1826d5f312a4"
    "ko"
  end
  language "nl" do
    sha256 "0060ac4cc108b3096a5eb2d6c0c17e904ec27563268be2e601bfc6b8ccc90e65"
    "nl"
  end
  language "pt-BR" do
    sha256 "194aad5fea31703eb28ace2f0af7419c2040baf1c20ad6df5fdf994a0220743d"
    "pt-BR"
  end
  language "ru" do
    sha256 "08aa129184f9e35f36ad70d6c03e16ce9a6180621c14213167ca1597e4019637"
    "ru"
  end
  language "uk" do
    sha256 "405a8feaf66b82be61092797dab566fc3dd9aa65bc2f7e22b5b7508e42533e78"
    "uk"
  end
  language "zh-TW" do
    sha256 "073687b7d281f3f902cd0b07b9ac973e27fecb153b4db1c5283c1c2c6e362f39"
    "zh-TW"
  end
  language "zh" do
    sha256 "42ef0e4217e6a1e2a1a5ef3d0066a0209657b6d4ade22a92af2d005043647578"
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

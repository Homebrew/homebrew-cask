cask "firefox@nightly" do
  version "161.0a1,2026-10-23-09-50-57"

  language "ca" do
    sha256 "fe4f32ae484847c72fc96b91e0ce923d2dcf80109d0985c09159de2b5f8bbf11"
    "ca"
  end
  language "cs" do
    sha256 "a235b4e9e6099a177569c455e771c3997a77895ce88885df39573ff6bfbf38a8"
    "cs"
  end
  language "de" do
    sha256 "0c787275be0e7e09776d00e3a42b5a67e79134b2fd88ee6924e56a86d7b06fec"
    "de"
  end
  language "en-CA" do
    sha256 "785647e84cb70cabd87dbeed2427eb6f471c18be83491ef08643ed39597d8cae"
    "en-CA"
  end
  language "en-GB" do
    sha256 "76fab571ef4f3e3d9f30ada79471b9ad6ea6fd0aca0a97f85320ab39fc8ad677"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a0dc0d812928b834e3750786a4d5aa14119a9575fdd8d23ebb7ec04ae5806008"
    "en-US"
  end
  language "es" do
    sha256 "8f8c601447d28bfa8e3d19031a0150438f61b34f02fdc70313f4b04246e372ed"
    "es-ES"
  end
  language "fr" do
    sha256 "3ba902507317d8c7d9bfa7fd85319513a553a175486b5b971971d06e4e916a52"
    "fr"
  end
  language "it" do
    sha256 "c07e1f78bc632152d823ef9984d02eabc57b240418a832ce3e2713e7c581a457"
    "it"
  end
  language "ja" do
    sha256 "42a23955e851789fbe9a922381eb13f853241d9fbaa1eb9c95760a44b07bde12"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "03d859e5c3c32c2aae273d5ad9996ed3176768631ada969654e22bd7c7fbfbf5"
    "ko"
  end
  language "nl" do
    sha256 "c125507bfe2890dab567d31e59cdcf328c99e6c6e2f5a639f770b3517ae72cab"
    "nl"
  end
  language "pt-BR" do
    sha256 "16cc2155d3c37ed86b02d3d04d9d474c4543ce6668158f26852227479ef171f6"
    "pt-BR"
  end
  language "ru" do
    sha256 "33b9b1b359f8bab4eee3455fdf518007f824046d84d979daf488b3fe26d0b2c7"
    "ru"
  end
  language "uk" do
    sha256 "73a24378d47928d806e8ea6bb0394b8ef5b372d77ca49a7384a62eb8f4be43c8"
    "uk"
  end
  language "zh-TW" do
    sha256 "1a6e02bc321202f5425c26287c18b8427b32c5977a3978bfd055776bc0d761d7"
    "zh-TW"
  end
  language "zh" do
    sha256 "d14451c7dc434f773e23d4d664fda38f336025849a7fda958edbe4326b5a2bfe"
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

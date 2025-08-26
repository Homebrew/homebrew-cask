cask "firefox@nightly" do
  version "144.0a1,2025-08-25-15-55-16"

  language "ca" do
    sha256 "93bc09d97559c54152e4287f99f7a8bceee2d8e12cdfe65451d67a44c8c7cc97"
    "ca"
  end
  language "cs" do
    sha256 "15e967d29b07cbe5c589058733573fb73a032414b743adc82caf5cf9df5b7852"
    "cs"
  end
  language "de" do
    sha256 "9087c1c33b15f16e361c799fdaca9a1de6ebdbfb6e8a11fe7f124791f924a893"
    "de"
  end
  language "en-CA" do
    sha256 "68cab720faba1b35e151557f51d3e20d77e69b3a93a36c0ac7f3e86d50b76bce"
    "en-CA"
  end
  language "en-GB" do
    sha256 "aee876a3b9bb7100688834472b0d06af214209c530a8eb24cc21635d0c008758"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f3eb8fe6867bb3f63c5198ad86a0048f0cc58bbb25a47ef021ef965504cb75fc"
    "en-US"
  end
  language "es" do
    sha256 "b240a9544a71f53738b015eb48f88f5b40474bedacf09407470aafd20b49453c"
    "es-ES"
  end
  language "fr" do
    sha256 "7d5a45125eb5014936d09784f39b42b6c088b0886112b2c7ac06d46c4f6fab8d"
    "fr"
  end
  language "it" do
    sha256 "853dcbd2ff4bb6716cbca13d0b12367735687919c659d311d3f32626964d9222"
    "it"
  end
  language "ja" do
    sha256 "86cf0ba69769666ec0e824d93875b7f26e1734febad8b4a110659d44568ee5ac"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "60a242a1acd1f16dedb9928cd745d2f93322f143eec9b882a279ce422dda7369"
    "ko"
  end
  language "nl" do
    sha256 "060da0ae2cb79a160edf3526b535b15ded5c23a0f57ccb523eabc17cf518afb7"
    "nl"
  end
  language "pt-BR" do
    sha256 "9277bdfc4624b60bb2e30e3204348f8a9e4817adbfbc0493c6dc46b7bc14d3cb"
    "pt-BR"
  end
  language "ru" do
    sha256 "339d43d8100c69b452aea55fcf6662e3615c95f7d0dd14595990084e90c1f0b5"
    "ru"
  end
  language "uk" do
    sha256 "9bc58d14152e397d3a9b7dd7baa3d0a60d627809e20c8dcb72cfe422ae6c745b"
    "uk"
  end
  language "zh-TW" do
    sha256 "38977a71523aed53329cc50f69c64190436ac8e1cfa5da12afb7b1cae2ab921c"
    "zh-TW"
  end
  language "zh" do
    sha256 "0a06088704ca1b719c5a40ddef6ffb605c60c0b5227e0e2a220bc8ff2df6ad10"
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

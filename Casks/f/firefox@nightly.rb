cask "firefox@nightly" do
  version "154.0a1,2026-07-06-09-41-32"

  language "ca" do
    sha256 "5ee994808f401c45669d722fe01e4b78628eedfea508ca2a5f90017b8bf77312"
    "ca"
  end
  language "cs" do
    sha256 "a56dcce0ba1fd29447b3cc8befb5b6e6d521cf8f960382bc413cb7a88eb5ea81"
    "cs"
  end
  language "de" do
    sha256 "26c286a2b964e2cc29bd99c2c436b3bcb99247f17afa02cb44f111a5faa7496d"
    "de"
  end
  language "en-CA" do
    sha256 "968b8ac373a102ae752453f26060734a0f7074a5ece4e4f7524f48a1abfbe8dd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ca72613dcd37207209183e0836466e5bcf3d22e247c1b17c27ddad59180eb6ce"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b2d14daee4acb359996f3b0a1b497b90f0c9609603ed97897422b217e3bd0fbf"
    "en-US"
  end
  language "es" do
    sha256 "b51d4bfa37de1538ba3974196abb02fcbc7762dbe2c03a437208dca58ab3a190"
    "es-ES"
  end
  language "fr" do
    sha256 "3f575d888dad7cc6cf34dc4ae22399375249196c61a5fb53f28ebed8a2351a29"
    "fr"
  end
  language "it" do
    sha256 "7cb8cc92d1df9b1dc25ebc8d67b268019b16f5ea7bcb0f8157beba953fba05dd"
    "it"
  end
  language "ja" do
    sha256 "547eb757065d0b9e70941efa9299e232289e456f836cd15c0df1414f4165c04b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e0054813dd0c4a20c32342ea0419183df23ee306b8449088a592251daa5c4520"
    "ko"
  end
  language "nl" do
    sha256 "1d80ac8f4b00295f93eb6546ba620a4ad37087719c0f2875ea051a47834be466"
    "nl"
  end
  language "pt-BR" do
    sha256 "823541c862b9565223fd82dcbbf24b7571b7934e4e6f1329f468d2ac6883b05e"
    "pt-BR"
  end
  language "ru" do
    sha256 "5a85dcfe4aa023ec7e8f6456ca2406da3a7f52869a1cfd0277a3f512cb71e8d1"
    "ru"
  end
  language "uk" do
    sha256 "acc913a7c100b065b67dcaa6fb7ac224895c593c425785946a225cc3fca1b727"
    "uk"
  end
  language "zh-TW" do
    sha256 "0279ae75c51422348d09a14ec32d9e908b3b95878fa02d5c5e22a646221e98e8"
    "zh-TW"
  end
  language "zh" do
    sha256 "60e858f3af62deda48628efeed207417dadf754a0c58ee3020ba03e1cadd6dd1"
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

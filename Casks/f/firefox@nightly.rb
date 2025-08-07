cask "firefox@nightly" do
  version "143.0a1,2025-08-06-21-06-18"

  language "ca" do
    sha256 "dfbb06b15fd43c1d356e276ee342346194b1c632208ec5c3e285d1f128789cf4"
    "ca"
  end
  language "cs" do
    sha256 "e1f6e06a9943b46451aa7913d88fd0a87a4c02023d91972ec95933175e40bf55"
    "cs"
  end
  language "de" do
    sha256 "86d2a93d74c95c694e5c2dc360f0b3f5bba279ca49c0035aa66e43533fb11a58"
    "de"
  end
  language "en-CA" do
    sha256 "be60581b90a3fa6c22ba8c27a08eb9fa925abffad7ac544f0deb1755cfe31e1b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "18e2172199ee4bf8545772b1c47b2a7bf36845181d76d71156724ea248529822"
    "en-GB"
  end
  language "en", default: true do
    sha256 "353e1c3c8f7a4992919dbc577dbf5f4a6e6641295b41f2e410bce58d01ca1e96"
    "en-US"
  end
  language "es" do
    sha256 "a4557018b2f58f07afa3d7ac1ccd87900e649a0b29d8a40f1d39bd96d3e053bc"
    "es-ES"
  end
  language "fr" do
    sha256 "cd74bb26157344d09531c93350041cb631cbb409b8418e49d3c46567fe97db65"
    "fr"
  end
  language "it" do
    sha256 "ada88846729c4a68bbe0fb2d19ff0065935c7fbac9b1d59f6e317dfccc3c4534"
    "it"
  end
  language "ja" do
    sha256 "23214a4d1d83cf793ad127bc41340ab059ef1aa566fa8e023e7b2d1be1b21963"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e3a28702ad0f557a09e7d1fefb207d705079021e8cfc4046cc598301a4342391"
    "ko"
  end
  language "nl" do
    sha256 "e34a8d9ad0cb57d9148b973ba58093c4238f22477c1a422ed1931710a7a3bde1"
    "nl"
  end
  language "pt-BR" do
    sha256 "5ac3d7cbe04832445e94ac9a0d99d20a870f54cb98152c316e4fae6f42af03a2"
    "pt-BR"
  end
  language "ru" do
    sha256 "86f5be10ff9ef450053f87e34ff674c23d4220f9a77f91ea89a9a28fc2186351"
    "ru"
  end
  language "uk" do
    sha256 "ef9328ac48781ce56c363555fda63b84ee57446f10145200af42a63fc0908896"
    "uk"
  end
  language "zh-TW" do
    sha256 "d48f1df69db48c9e5281bdd317199c3e483510d5f338f8e27a8ead77a4fbdeca"
    "zh-TW"
  end
  language "zh" do
    sha256 "bcd292d1815bb3d9f30d4b4d990f9dfe2d269a64ede3b0cbd035156f5d646083"
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

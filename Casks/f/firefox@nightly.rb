cask "firefox@nightly" do
  version "145.0a1,2025-10-01-20-16-01"

  language "ca" do
    sha256 "5eb8344f132b3f00aa33a0a345bbafd89faa98b27ea110a0dbe6567cbec54ac6"
    "ca"
  end
  language "cs" do
    sha256 "2e65514d374a8ec9b8a869fbeeacfe9aa6ca21ae93060d0d05ed726022d816bf"
    "cs"
  end
  language "de" do
    sha256 "72b1e6fec6dac47af570065290f7a213535fe2e9a9f8f709619f45b419142a78"
    "de"
  end
  language "en-CA" do
    sha256 "8b4bf8a6c88542f9e336d88eaeba920d1865f057e524b4bd44c9044d18522b60"
    "en-CA"
  end
  language "en-GB" do
    sha256 "31b544d235fc284899197a9c269566b7535d1ce00e8eaaa9bb893812e0cfb6d5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cad9e06be6bd2b85bb6db9ac2441f09ac4f3421f0a5630db0628f6ab64184f3c"
    "en-US"
  end
  language "es" do
    sha256 "3999f05fd68d91c5417e3b48cad2ef7c86f58745d21410162b22bffd65fbdf5d"
    "es-ES"
  end
  language "fr" do
    sha256 "d6be9f794fce8a7f2dc4f2a9df7036102f556ebcedba2ebbdf388598f327b6c3"
    "fr"
  end
  language "it" do
    sha256 "3116e7f56a4bf4bae39bd32532c9e76e9b6b0e53b711bada513f93d37721d3b2"
    "it"
  end
  language "ja" do
    sha256 "71e6d999e2348512ba411a618020c31f2af06584d3b816c5e04dfdbb088f99c7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "28709f2bc32d1df0d1acfbc440b528524ad735a38c2692039210193cdbf61392"
    "ko"
  end
  language "nl" do
    sha256 "1c12ce31c7ca4dddc1e50e4c4d6ac896d155824f8934c60efee30ab8721ce12e"
    "nl"
  end
  language "pt-BR" do
    sha256 "eb4e0eeb3278ab1ff02e1f90fa93e2114af188e28224b375ce750c1209363b99"
    "pt-BR"
  end
  language "ru" do
    sha256 "465b6b30e39f4db69392fb31abca8f5917748bf1e615469e2c00c286b193b84c"
    "ru"
  end
  language "uk" do
    sha256 "43c0953aaaab2b54755f8cf1153aaee9d96b5b390aac8d9b128450543fb1af7c"
    "uk"
  end
  language "zh-TW" do
    sha256 "4f3aa94fba6aa5107307a1c52be32692aff661426237983a0d50fc2641155e55"
    "zh-TW"
  end
  language "zh" do
    sha256 "c577e8b4683d45c4692f0b030593fd10e6a815f4bc2ece8bbc0ec029b173ef8e"
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

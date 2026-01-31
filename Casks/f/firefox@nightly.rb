cask "firefox@nightly" do
  version "149.0a1,2026-01-30-21-13-06"

  language "ca" do
    sha256 "94eb4409a83fcaeba8fdd7dad769d9384ca23354bd9a343d53db67d534fc396b"
    "ca"
  end
  language "cs" do
    sha256 "8296ea89150ef42f31a1f486d8b92b365ebdab54529161b406620550eaa1626a"
    "cs"
  end
  language "de" do
    sha256 "89487ce958f4d74c292a4101c2743e20590609e1016e26e4b1292113572616f9"
    "de"
  end
  language "en-CA" do
    sha256 "80ad51754fcb5c4fef5a09a79afea9812b41800824653ac0c828628a6566556c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d49a62f68da6eee901d57376b863fd52390ce236570c1f05a68ddb6fe9b9b690"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b29691db8e3b8774dd91d2ab4bb9850859fd8411bbf466475f6326346ee7980b"
    "en-US"
  end
  language "es" do
    sha256 "4ef0605327e92c4d9f6c8fba91d8cfe3ba046122ccc6a42c7571bd53895861a8"
    "es-ES"
  end
  language "fr" do
    sha256 "d7cb45e5bb733713630d1f7ec5ecd4859058276452fb2102173daf1b55b61709"
    "fr"
  end
  language "it" do
    sha256 "dd4a67601dff77db2d25e1f77ed122032395e0ccd9ae25d52e73d3d34ddfab3f"
    "it"
  end
  language "ja" do
    sha256 "83b5f645cfea36b49416c8ecc0dee5130eeb8a0cb76503d57a936b09c84872f9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "862f533e93ba2cc50db76b8cdf47ce8923d93c6b7b8c9d0320d489bbd9fa255c"
    "ko"
  end
  language "nl" do
    sha256 "f7f7f6cec97ac60b0d1202ba2f1908b8e24abb2082219e77a9d8c77ad615e182"
    "nl"
  end
  language "pt-BR" do
    sha256 "d30c5897a167019a5d30f5366bdaa906a153c5c7a3c8f9abd62de1bbba0ab055"
    "pt-BR"
  end
  language "ru" do
    sha256 "605a53c262dfd3d5f81341c64c91af07cdbe737cb1f9c6467e08a263ca05c818"
    "ru"
  end
  language "uk" do
    sha256 "9f84fab668bbf322c144d11529d039378ac14d48b8b7d3cae97812c5277952f0"
    "uk"
  end
  language "zh-TW" do
    sha256 "5299d404a1f2fc703fa621a0fe75c4a3c74820ba5abe7ee59a6def66c2538c99"
    "zh-TW"
  end
  language "zh" do
    sha256 "587683fa438f8bc6ebb30fbe262ca95d1d1a863a82d4fd0b3b77c155b9bba744"
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

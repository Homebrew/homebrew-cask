cask "firefox@nightly" do
  version "148.0a1,2026-01-07-08-33-13"

  language "ca" do
    sha256 "d8164c973eedaf1940aa9cde1d8d6c9f3a8b59f8ff627a8630db71ca69af6994"
    "ca"
  end
  language "cs" do
    sha256 "be63af4fab2b4948add3c6fff4706dc5c07703f99b85621860902abe30c9d232"
    "cs"
  end
  language "de" do
    sha256 "4148783c0a95bd7ca7eb0984cf1197d6077e668ec5e621ab69e2e9b9824be3f7"
    "de"
  end
  language "en-CA" do
    sha256 "d222b890abc401e501f01424cae143f2d7c82d893c372cdf9a0d09edfde6360e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "64e1bf63f29f232854ddcefce7e39c31ed3a1334a7944316c5fbefdb1909237e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "72f44d3e193f635f62f68f1f118bace4d6677756316185520476a834ed883149"
    "en-US"
  end
  language "es" do
    sha256 "6f01a30ed39b0cacb20e8953c70810742995114a1a7db2989ed801ba26cbb9fa"
    "es-ES"
  end
  language "fr" do
    sha256 "b5ef19a7acdd25e6499cbe92dace1935c17414f1f7ef7c9100747df67ef2a4cb"
    "fr"
  end
  language "it" do
    sha256 "cf687786b26197de681cefb840a1409d51460a77d7cdaf8bc46b0d49bf2fa29a"
    "it"
  end
  language "ja" do
    sha256 "7f20c57d7ca58ec07697e3cd80c6ca6d31c6a1bfc56a2203d52673c5be96eab1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "06244c941ed1522732020c81ef9bcdf5485035c0db186c59a931cb2f593d854e"
    "ko"
  end
  language "nl" do
    sha256 "cc39d1a5d2ebd00c3fc48c2e5461d99ba23aeeae6f92824b6906d5d620a478a5"
    "nl"
  end
  language "pt-BR" do
    sha256 "ec164481351219652afd51e3e3a43762b0a67aa610fab9c0632baf026c962a07"
    "pt-BR"
  end
  language "ru" do
    sha256 "12b8fa35b28841f772aec0a8d9c8365825ea55f21f607a3820efd87e558ffb1f"
    "ru"
  end
  language "uk" do
    sha256 "115a0d42f0031ad3f19cf09435f9de4c8f40e8ec560f76d1c96f9e3faf9671ca"
    "uk"
  end
  language "zh-TW" do
    sha256 "4689203553bae86f782a8c151544809c95df2017e1489e2d9b3db5e9fb61bfa4"
    "zh-TW"
  end
  language "zh" do
    sha256 "2c68bc2ad46c22de3fea34459c57ef0c5298c0506f573caad4ddae45dc186492"
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

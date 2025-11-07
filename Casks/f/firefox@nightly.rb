cask "firefox@nightly" do
  version "146.0a1,2025-11-06-20-52-56"

  language "ca" do
    sha256 "d03b9bcf59eceecc67c0bcd119f42e4c3e484a28d8e1e24a9a94c087e4d8776f"
    "ca"
  end
  language "cs" do
    sha256 "ef85ce13464f2e4345dcac57772ae9d075bacd0884213ade6cecf30bdc89a976"
    "cs"
  end
  language "de" do
    sha256 "55d3b7d571ea083c24dc9941ce99333c95166102240f4740a694a545866ac519"
    "de"
  end
  language "en-CA" do
    sha256 "78cc6f8d7446ed2a17efc7d87b186b55588d097b8bf1f21e02f32d9f53bad67a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "71dd9f6eb145ece0485d61cdb2bfb03e08a71aad5c820b462ca6e0c06ab631ef"
    "en-GB"
  end
  language "en", default: true do
    sha256 "576d602c31e07dc2088fb6f94276cde23888f3aa676d01c50bac80e59c4d7c07"
    "en-US"
  end
  language "es" do
    sha256 "2b96692e4b7b860db931e4764bc3337d7182e2078ce8d184c583bc025a4c32e7"
    "es-ES"
  end
  language "fr" do
    sha256 "12fd5d6b4aa302ed0f641ccd2dae5067fc875379585ad34eb680540e0f81b36b"
    "fr"
  end
  language "it" do
    sha256 "0924b03a1dba53dcb2dcec1dc600fb69e388fec13fafe443497c68a022317ca7"
    "it"
  end
  language "ja" do
    sha256 "c50e54f63aac9d5554e5b4e90adc6b52d4085a196feffa15bade7793917a9620"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "34894ce167ad8bc0198eb383b3c162005974f4c056f46536f65bf06e9d501ff5"
    "ko"
  end
  language "nl" do
    sha256 "fbc2eafb80a0e50364d845f8e78cf79bafa741d852f8e41f42030d721b7e0d21"
    "nl"
  end
  language "pt-BR" do
    sha256 "b1974d1e77c7b5267d2d5447dd2d33bb787892339a0bb5e81a82aa7f523215dd"
    "pt-BR"
  end
  language "ru" do
    sha256 "4ee03da03817f3338392ab6295b37473d6cd5f0b852d410bbbccab799345f415"
    "ru"
  end
  language "uk" do
    sha256 "b7bb0dda31aeb639ef56241c4ff3e34e9932000b322bc07cc02c54f472b0d121"
    "uk"
  end
  language "zh-TW" do
    sha256 "47c8d79a29e4912f9f8cc8a579334844dc03a8b31bc3ffe963e7d4759fc4ff39"
    "zh-TW"
  end
  language "zh" do
    sha256 "8751f6e52f26ccee2f84db98454fe8e8611df4b1c9a8e85d926a00c858e7952b"
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

cask "firefox@nightly" do
  version "149.0a1,2026-02-02-21-38-05"

  language "ca" do
    sha256 "2f55d683e6e41b646893ab148869080d2447ccadf72b605574f0bc2e227792ab"
    "ca"
  end
  language "cs" do
    sha256 "add857ad2c2a0414e59dd41421c1dfa0225b91ac16d9d35b3adcceb5e53d9d2d"
    "cs"
  end
  language "de" do
    sha256 "31cf39970bc4801f7d995b4a0e9ab881f770f28c5a76d86f00c12e36dbc77805"
    "de"
  end
  language "en-CA" do
    sha256 "098bfdb02c08c6445b976f964a7422fbd3613079c038b7fc4f9e63d1de11c547"
    "en-CA"
  end
  language "en-GB" do
    sha256 "aee4901b6e719a983ab001ec97065118f13a345f40fb006344f8591cd8bfff47"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ae9e0cddfd3023532fff0807d2eb47022f355ffcbdf5ffeb71ef0bfe95085dd3"
    "en-US"
  end
  language "es" do
    sha256 "39a0077f384c5a1126f31e3d0a434664ec3e2872f49f1f033ea8540ec2980843"
    "es-ES"
  end
  language "fr" do
    sha256 "313161223dc67985d732050be2189fd5750fb2858d3fecf9d441c110a92cd5fc"
    "fr"
  end
  language "it" do
    sha256 "8916ef78090c55481518e6e1cbfa212f48dca1994d2895f4e6ea3be596407658"
    "it"
  end
  language "ja" do
    sha256 "5de9751a224347efc818e515920a80f6e7ba9f8ab4b02c2ce72594fcab56212d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "adbe3c498c06f2d772b4306e033b7e618b63c0b9786078521009c55625a86141"
    "ko"
  end
  language "nl" do
    sha256 "139042406c26e4f955f62e04de8f6d05797891e48cabdfc4c4b1d1a748bf874b"
    "nl"
  end
  language "pt-BR" do
    sha256 "579b62d2a759a0c9a4f04ba08b1452f76d8a76d02a8a9f04129d16f82d5a5a58"
    "pt-BR"
  end
  language "ru" do
    sha256 "0acabe1774a4636cb776431987cd02b3ea893d9abd307d2ae1b2b09e442de32b"
    "ru"
  end
  language "uk" do
    sha256 "cf62dffd4dfa283278aed560c9e68e988000576faa9532facc8219fc9e726ece"
    "uk"
  end
  language "zh-TW" do
    sha256 "61bab1a2b422656ecbae54615e4adda6a469f1b067dff94be96dfc2ba370e2cd"
    "zh-TW"
  end
  language "zh" do
    sha256 "5cc48410ab02f1861ec204e3828f582cb650ab31a9ee0a98cc6d5c367aa4611e"
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

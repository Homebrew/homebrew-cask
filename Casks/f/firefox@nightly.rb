cask "firefox@nightly" do
  version "155.0a1,2026-08-06-04-16-15"

  language "ca" do
    sha256 "c3a247be66dcc1a53abe7b75adab7ba7384cb5f09fd71f3f08bed80b0e8486f4"
    "ca"
  end
  language "cs" do
    sha256 "3e74c1d699fe59e1e42da61f105fd40e6cb5a1666ec31eb2f69927784854cad7"
    "cs"
  end
  language "de" do
    sha256 "8c3261c27bb570eb446bd3746932872ed5d721140513f72bf955a1dcd969cecd"
    "de"
  end
  language "en-CA" do
    sha256 "a71a0874eefc0f9963358ecdf233830dc0648026589c2166d1123824c500dbce"
    "en-CA"
  end
  language "en-GB" do
    sha256 "354fd47c2df3ae9de59fc52f0bb7445d459bb1dcbbe6245a8369493337e73290"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4637bc73cc2a8bc406c87f06f12c4b33f4ce34a94c36f74de62cd5b815a22e93"
    "en-US"
  end
  language "es" do
    sha256 "68cb11665eef7684e103bca0851f5ef8d2b8e8311b682984862875a7559c5d71"
    "es-ES"
  end
  language "fr" do
    sha256 "f83e217971e3a47a311cff28cb23194ef9666a4e1821a9c712eb0c4b112a2b77"
    "fr"
  end
  language "it" do
    sha256 "f3f99c5536a00f97e4673543ed24208b84b7e945ecd56ffcd15b526556a71f87"
    "it"
  end
  language "ja" do
    sha256 "ca53ea7f9172d421f2952a28a016a5b0b97ca1f1a2061b75b8b073114b1b3630"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "531537a2ad8a0d3a2a9101b13bdebb849dc80c4061a118b0c93e4646ba76f30a"
    "ko"
  end
  language "nl" do
    sha256 "53ee43c61c943dcfe23c3fb032c4b4968c7bde42b8424a9469329df7915d43b0"
    "nl"
  end
  language "pt-BR" do
    sha256 "be2aae15c1cbfd7509a057725d5f595365d482df894278646ce9c2907a78d3e7"
    "pt-BR"
  end
  language "ru" do
    sha256 "5bf34bfb9703ae12fc2beed1eab5f27d55197db167961dfa97cebf6233f0a87f"
    "ru"
  end
  language "uk" do
    sha256 "4e54a7220039ac9b9400b0849aa6ff471da8e0c134accf39f78765217319d4e8"
    "uk"
  end
  language "zh-TW" do
    sha256 "1266351db84817f45aa310c4115e7856cbc7aa36918d0ca165c9c037271cb8a0"
    "zh-TW"
  end
  language "zh" do
    sha256 "b4b65c3e7c88a29e720b5838013ccc8e4f7740a8b04acece7390bba35843f6d9"
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

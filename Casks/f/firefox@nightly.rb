cask "firefox@nightly" do
  version "154.0a1,2026-07-01-09-27-14"

  language "ca" do
    sha256 "b0e4b3e14ceef5119b7fb688e1d4fd9d2ce9bdc8e561c226d014dc980620bf6c"
    "ca"
  end
  language "cs" do
    sha256 "7219c7f48dec5358c97e5b6e2d40021322bf367f6f7cd8c35b360f494b0f8b5d"
    "cs"
  end
  language "de" do
    sha256 "034eb4d57b630aab9cc46b7ccbfa06973c2c3ba596b4e4a5c1d82c644d16d62f"
    "de"
  end
  language "en-CA" do
    sha256 "7fb6116bb468c318d9dfc316697c0d91840902cdfe2bd53a4810c3b6b9a97f96"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f9ea740bfa2d4d7725797244216998205c2116ec28c66b4b18bc059f297a7906"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2ec5af3bf941c2a3203ac23bf12ccb53d27d9d8e4ab2cb94dd8fa122bdb8894e"
    "en-US"
  end
  language "es" do
    sha256 "921724f4d4438dfd1b9e5770b5bfd97ef7cf778947510be917cb1943bbc30319"
    "es-ES"
  end
  language "fr" do
    sha256 "cd11ffcdb365e5fc8d9670709a03c0f11adcdfb9fc8829bf4362527d05ef2164"
    "fr"
  end
  language "it" do
    sha256 "3bedb6343a9cc1f38b3e051a5306e83c8aeb08d5a97f4ac9df4da1f340b941e2"
    "it"
  end
  language "ja" do
    sha256 "b0b5ca1bc965082f768a04f697a315722648db79e5e456ae75fda7c31ad4b813"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9e6dcbf8e2d405856fda49aa0fc039d9db6158e17ad032bffd1580e184a50e38"
    "ko"
  end
  language "nl" do
    sha256 "5fb7e1485b08d54479f7f3ea14c6b29495c510569e6abfc0cc2ebddbcf57730e"
    "nl"
  end
  language "pt-BR" do
    sha256 "d9d62c446c13bfe28eedcec7500d834310f3adf4ad64ff106e60cf2bd290002b"
    "pt-BR"
  end
  language "ru" do
    sha256 "c434bffac3decbfb066db43e527de463c811f999ca5c28350fc92ee0e22a4cd7"
    "ru"
  end
  language "uk" do
    sha256 "658e0c6769cf9d868c3fef227a94607ab3e06012fd75b815568364a3b22d0b4b"
    "uk"
  end
  language "zh-TW" do
    sha256 "bc22f8fcca0b1259c0af8755a14f661c7b0f626aa61fb6ab0f31ca42f006a19d"
    "zh-TW"
  end
  language "zh" do
    sha256 "2045006488999874fd21dd40993d7d9c1f2bc56d15ced129a10edc22cfae62a2"
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

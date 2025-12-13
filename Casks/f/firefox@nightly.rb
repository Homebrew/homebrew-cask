cask "firefox@nightly" do
  version "148.0a1,2025-12-13-09-12-41"

  language "ca" do
    sha256 "07c9312ea5462cd139d982c845a65fbf706f3c2a51f6ffc2137556c03fde4052"
    "ca"
  end
  language "cs" do
    sha256 "e4e43455738f0f38c91e13898c3320e7ea2c67322e1344e15f7a5fe5d796f850"
    "cs"
  end
  language "de" do
    sha256 "1ef7a3cdbd50b42ef71c07d962811f6b356cbcbff596aae3abc333497300226c"
    "de"
  end
  language "en-CA" do
    sha256 "e035b3078d1cdba2d1adfffb9247ecc61a18082f14d58d1ee091553e8423cecb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e7ecf34280e1fd35f067efa95373fbacdbb833d5eafd28f5b8b72881ff37ac2d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e872cddbe4ca7b99426879353fa5987807dfc049ef37d4b1e915ce41c3b26dec"
    "en-US"
  end
  language "es" do
    sha256 "de189d1ea846f8fb1cf2a7fa8a6bf4370151e934329dd97986763aae4d176b7e"
    "es-ES"
  end
  language "fr" do
    sha256 "22fb97a422021c26840ffa7a12c1270a4f5e73e25c046986577ed5cd9bcd3f7f"
    "fr"
  end
  language "it" do
    sha256 "5e148b20f069a5c982a0bad8a57094985a0a9d96fd457fdc669174f5ef2bfaee"
    "it"
  end
  language "ja" do
    sha256 "b016075b654e7208cd201c46ddce8502a31914db2688a078cd8df2cd0c4bfa04"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "da70442358f6adf0231e909c7ee23306dd352a2e5f8bd40a32df701778c626a0"
    "ko"
  end
  language "nl" do
    sha256 "37bff51c2ed64ca0c94297113d9a8a9c42d52b12e04dda7d3ab4b447b8971046"
    "nl"
  end
  language "pt-BR" do
    sha256 "3bab7075b44100144931dd687e9c28974434cca3cf35101633f4355f51bacdde"
    "pt-BR"
  end
  language "ru" do
    sha256 "ed002d5395ca75e94e81f5722079512aa53e3539cc06a5c5b2fda24424052d52"
    "ru"
  end
  language "uk" do
    sha256 "167c804a9bec6b119f0c588e02ea735f20b2567a726a9db0860f35d822846734"
    "uk"
  end
  language "zh-TW" do
    sha256 "8557f19d262992a7ee8917f9d9f395cbbab3d15ea1dc5f7d88822929b7cd1d03"
    "zh-TW"
  end
  language "zh" do
    sha256 "badf130f0302dbbe580fa0ab25c964559c9f641cd188c9c44cb8ed00740b0cb1"
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

cask "firefox@nightly" do
  version "154.0a1,2026-06-16-08-37-15"

  language "ca" do
    sha256 "036b5da80d63f1fbe9426581911b55d57f3707343d86748ff54c3e9036351a7b"
    "ca"
  end
  language "cs" do
    sha256 "a773b06e8accdfdcaf01d103d1864e842e1970b4b85a8f8621b9106e78b5e60c"
    "cs"
  end
  language "de" do
    sha256 "a7dd303995f7cd78f7100b47aeb6a23eb690b11a9c9bab19219c7c317342da89"
    "de"
  end
  language "en-CA" do
    sha256 "d4c727250dd3315a2ad1ba659f98fc427140599e0678283fbabe9d75b3dde96e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e7608bfe0efe239fbe0c3ec80d96d5488632fb8f1a82457be1c4d302f7e8f69e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c67f48e37baa4532348e1e89c0906c7ddb3f59f10d5958b2c24e75b2502ee0a4"
    "en-US"
  end
  language "es" do
    sha256 "ba2fe814f24a60cf12aaa1f38be89f9e8c87cbd59a3caeafab1411846be185b5"
    "es-ES"
  end
  language "fr" do
    sha256 "1900c7942802e2f401894f6e512a15affd337a3ea9dd66eabeb7483d5961e881"
    "fr"
  end
  language "it" do
    sha256 "ba0485f9bdaf7e673b01c3045d4322224915b93e35ce95c7c12c18bf9b873734"
    "it"
  end
  language "ja" do
    sha256 "acb02e9359c41edff15e642aac5daffc205efb4fa7f9d17ad28d11192c972169"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "eee67bab7cca2f4f4ebedb0c1d0a3705afca8b24bbb989b8dfac876c3223749c"
    "ko"
  end
  language "nl" do
    sha256 "e19c1aa35860c05970fce011f9bb3410051a6031a895e08b42b653395bada249"
    "nl"
  end
  language "pt-BR" do
    sha256 "2fffb9d9be728bcbba09a3a4327ca3654f5675d30ad7536c0a00b8dc0ecd4361"
    "pt-BR"
  end
  language "ru" do
    sha256 "6c5af06fa1e1674249e0144e3f25d667e837baceab59eedcc60d4d56f9b4a51c"
    "ru"
  end
  language "uk" do
    sha256 "5514a0fad64537786d4d8a4070f2e807e4433cb610e185c96460f81de8220c03"
    "uk"
  end
  language "zh-TW" do
    sha256 "e4acdf5ab6c08ea8e6bea7d49f41fd9744ab6a9588857a44d189c3aaeb5c6729"
    "zh-TW"
  end
  language "zh" do
    sha256 "012e0458c149fca94ba2bdf7ef52cf77036d5fba0279148f7b28173afd61d75a"
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

cask "firefox@nightly" do
  version "148.0a1,2026-01-07-16-09-34"

  language "ca" do
    sha256 "4241f240209812ae8c8e0df10b2bfdd07f131d71c6e1ceb4c31d5f50fe4a234d"
    "ca"
  end
  language "cs" do
    sha256 "4f8ebe5d8e938d4547ba5c317277742fa1582c876dc3341929976e2cabbc406e"
    "cs"
  end
  language "de" do
    sha256 "776250859cef5f9ba30355f81673c4b17ed84054dd00850c381c107fb32f582c"
    "de"
  end
  language "en-CA" do
    sha256 "5b53803173ddd8900cb20872ed0af7f4a4a30eeca8270e57de52c14353c9f060"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7c990112cb21e1c0976ee2215ceb0bf2b7f44c8fffb53921e449031357bdd8d5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b8696569bb357c8ecf985f585f30c326a610eda9c0de0f9507743cddc3f6a234"
    "en-US"
  end
  language "es" do
    sha256 "01ba0990704a39b3c3e16433c84fcf37296c72edd35fe5f7ecf99803625369a7"
    "es-ES"
  end
  language "fr" do
    sha256 "0ebd6983d6062e97e07a0cae5a7a6c89e1e85049a72a47649aba892210116355"
    "fr"
  end
  language "it" do
    sha256 "f4ae7dc2e93fd11510ed26c8645a8a1fc4302c6f04f7988d13daa20bb04eb590"
    "it"
  end
  language "ja" do
    sha256 "148dd707f854ea51f4afd8ed634e1bde1b9e8b7387b4d8b5205dc4f292e328d2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "08e9da7dae9f3413e19fa891f92069c98d07fe0b217158dac882cd406d364002"
    "ko"
  end
  language "nl" do
    sha256 "0c900ec36ce5e3731c8c4892f7fe57fbddc2d5967854e0b3153e8f546c352a34"
    "nl"
  end
  language "pt-BR" do
    sha256 "cd7cd05db77a02f064b6086bf79d41aad93856cf44210697fdd2b2230738e534"
    "pt-BR"
  end
  language "ru" do
    sha256 "3324f5c6a9e66a9aef465c7f65da238d5952e980338a48e5ac18b638205d017c"
    "ru"
  end
  language "uk" do
    sha256 "f473fc8da8462bd3743085c702b330a7c2b9260090c6deb81a606f16962e9815"
    "uk"
  end
  language "zh-TW" do
    sha256 "b98722d5e6a0efe01995f752c970247f71ee2dc05230c0a2965753deda88c26c"
    "zh-TW"
  end
  language "zh" do
    sha256 "7a739b1f9a49cf8b3e2fa332afa3d4e41229ec477c5a8a0728d5c2a6bcc120d7"
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

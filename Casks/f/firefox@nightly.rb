cask "firefox@nightly" do
  version "151.0a1,2026-04-05-21-02-19"

  language "ca" do
    sha256 "3133fee0e70e467f452ce170869ce702cfed3619819a3342cc696fcd60f87553"
    "ca"
  end
  language "cs" do
    sha256 "87175a75ee8b7ca17fe9c688e4d2652c65c5f09770a06bc040529306ed150e2d"
    "cs"
  end
  language "de" do
    sha256 "350d740771d4e20e865f86309596db25af37234172f337ec3f4f33b145aeb39d"
    "de"
  end
  language "en-CA" do
    sha256 "5d550b83d0578d656a96ab699322ecff1c462f462a5f62d03aa8c4eb3223ab38"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4dedc082d078a7933b91d9bf5f31de2d96c8d79ca1009f9f316983c67c62fdff"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9a8c8e34fe2ec1d039ff6a64155af71f456af4ac7c6565eb85b6bf250201e502"
    "en-US"
  end
  language "es" do
    sha256 "143ca4fb0c2bc9a2e9e5ffa1ffad80898cb16a69f700e509494b8c98d9627ddc"
    "es-ES"
  end
  language "fr" do
    sha256 "80a7f263bd43fa9b04ad19ce77b5578e500f25eb2f7ee2b16f3df5dd3e2731f6"
    "fr"
  end
  language "it" do
    sha256 "730f43e795473c70a80bb9ff5ba5fe881c624813919bff625a3e7dbb2d66abe2"
    "it"
  end
  language "ja" do
    sha256 "0280acd5d4b06ba935b1063f4bd9473d8330928c224ef175d8f98df76dd45d59"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ac79a08d690363e66de0cfc10255a568777d1a7965b79b4401e40a355351e4d0"
    "ko"
  end
  language "nl" do
    sha256 "d5bf228d91cf813b93b8b16e0f7260def1fe00c1e696d1e6ca9882b851b71176"
    "nl"
  end
  language "pt-BR" do
    sha256 "bb12ea325e3a48339999bb4fff1d61cac2d0afc3070693808ef350936e26b8f5"
    "pt-BR"
  end
  language "ru" do
    sha256 "517e08491ed7c24cf2a929ce26989729bee1b7c0a3d6acc96e7561b803e0df68"
    "ru"
  end
  language "uk" do
    sha256 "cbd2bff7049d24042423a32963c74dbf9f92d781f16777de5596e69c2e591f89"
    "uk"
  end
  language "zh-TW" do
    sha256 "f0194c338766f763a52e026e168dfa7f4a1adf16013293b535d9f6dc5988df1d"
    "zh-TW"
  end
  language "zh" do
    sha256 "f4c464015d7ef782d5f9cb5cdcf13f30b8c113448e7ae1f9d185293fb1188dc0"
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

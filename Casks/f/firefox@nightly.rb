cask "firefox@nightly" do
  version "150.0a1,2026-03-10-09-45-46"

  language "ca" do
    sha256 "ae8475e22561a9c8b5b481d34afd814cd239a0eaa0f6f341289b94e5ff270ca7"
    "ca"
  end
  language "cs" do
    sha256 "b94c628db169ad563bcabe4c7c31e4e4b9193b5c0be88b8c520c1821b84d0a09"
    "cs"
  end
  language "de" do
    sha256 "dc789ce338053cf0a110ca47208a41451811c0c72ed9a4097390987865440467"
    "de"
  end
  language "en-CA" do
    sha256 "ec723fc6a206db3e743c2e496bde58a6eeca9c0614ab80e5ce56846ad6aa845d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "658d64b228d61d677f5ef3a3e49e1f3b936b7833feaf6b3b8ef5b2428f8b753f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2d1631598c957d0fb560971ded4d48bfd6b0412566e4e546ac7c75afe82b5e1f"
    "en-US"
  end
  language "es" do
    sha256 "50dc7f3d174589973ed4588194a6a1e4697492033a3556d9074db939248b83a7"
    "es-ES"
  end
  language "fr" do
    sha256 "bfd57fc3c0242cb24a98ca38d2b20505eaff18fa9ced3df79689082b896b9d46"
    "fr"
  end
  language "it" do
    sha256 "e2396419fe19e4ac283aa1d9b0efab8076afb186dbb5a7a7ea611f52d1f08e05"
    "it"
  end
  language "ja" do
    sha256 "68d2cd534fef4fc2ac96d46a3b660c0fa289bc6b45bf3e38a6cf88381d65650c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "81a333fce0cee2d7f4ead90d3031d7cd151a5389551b08c4b19babd09271f447"
    "ko"
  end
  language "nl" do
    sha256 "627eca613060be9e7ed68e8975651e56e7c8c071ec8e0ccfc87b42ebdbb3d646"
    "nl"
  end
  language "pt-BR" do
    sha256 "5890a456cd7b02ebca57d7485f7ab174b7ecc9218f10daf14dcd3f0279979ea4"
    "pt-BR"
  end
  language "ru" do
    sha256 "8f3d61a4ca8916fd2df10636388a5878fe6bda52b43abca8aaae6c2078444aa6"
    "ru"
  end
  language "uk" do
    sha256 "c13ebe693d51482bc004e4c0a85b6ed06d64edb49fad22ee8a6aa2ac2afa500b"
    "uk"
  end
  language "zh-TW" do
    sha256 "8b5df04bbb139eaec44df3a894d9404bb052c050a330fbea850f3877126e9e93"
    "zh-TW"
  end
  language "zh" do
    sha256 "4ab7c4da675d0b244b68e752abeca6093ae865d917e75387a1e3624ea39db624"
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

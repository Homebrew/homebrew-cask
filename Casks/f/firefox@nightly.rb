cask "firefox@nightly" do
  version "146.0a1,2025-10-16-09-59-51"

  language "ca" do
    sha256 "d681ad58592221650e85f4379187c5cf38f6d1baef874fdd9cce0af267413853"
    "ca"
  end
  language "cs" do
    sha256 "6897171196b27557a5d6d97c287f5f8f66e594c0d89cd603dcab6daa06efdec9"
    "cs"
  end
  language "de" do
    sha256 "7787bd4ebad6bedd1f1396ce3d7c9c5bb32455eb2b652971cfe850de7acfe2a4"
    "de"
  end
  language "en-CA" do
    sha256 "caafb5bac93589f263001cc64fc3b7f3b2c8282456ee85e83f63b9b8b6471a66"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6546faa2958111c47299e476a6e1b4b6da49d501c12292a6244166498733da6e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "192cb576142a9b136a1197febf7a90a84fa779fa617f8feb404578dfaf7ac7d4"
    "en-US"
  end
  language "es" do
    sha256 "d41be47d75d877c0d47947c2b3c281b04d41850a25e067e0f1c3fd6ef96ea31a"
    "es-ES"
  end
  language "fr" do
    sha256 "f835f82781da95f528acc355e860c0432e422e70c212692e61f1475767ca7a86"
    "fr"
  end
  language "it" do
    sha256 "92cca4c62d1f23243f6110d58092701fe33c8a4907d4339c68d9b74dff0d2806"
    "it"
  end
  language "ja" do
    sha256 "182c311aaacf50bac82b3aaa4e8ebb4765d0eb2ec793ab69d35a8688e3ee0f30"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1f7a238fe51c55a4384983f9cae773590ceb234d900771f43ee9f38a64d38fbd"
    "ko"
  end
  language "nl" do
    sha256 "f35352e4f6c6defc43f66cb3d3abf232c24d3249a65975a30428df8b01d16317"
    "nl"
  end
  language "pt-BR" do
    sha256 "92ab154e872f8db120b13ce28673f03a6733460ec7f739a38f1dc7ae52b8611b"
    "pt-BR"
  end
  language "ru" do
    sha256 "31406c17f9ff716bcad95601279edb3736e0a8a6333bbbb9d3d7651533ced1c8"
    "ru"
  end
  language "uk" do
    sha256 "27ad067a982a02a8e324da46e75a40b7159ed97dab338ae9c86e18e49bb6ba68"
    "uk"
  end
  language "zh-TW" do
    sha256 "6cdadc4e3895d0e9ff96c2910c9e6895712cfc60792677a87f0db928e2404a7a"
    "zh-TW"
  end
  language "zh" do
    sha256 "9278e2c6f3265a145e183252c9c7907010ba7dc87b01cebe1bf907c6270f10ac"
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

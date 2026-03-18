cask "firefox@nightly" do
  version "150.0a1,2026-03-17-21-20-32"

  language "ca" do
    sha256 "0b5fe7e87f0421d7d3892c54001caf5290d026a11a965e6d34d49b35f3ee1f9f"
    "ca"
  end
  language "cs" do
    sha256 "f18bdb68fc32523e9513be1344d6f935ccd6a90f84110bf9ef1fdeb3908ebf20"
    "cs"
  end
  language "de" do
    sha256 "dc86978a09e3432ae1d9beaaf961c41efc5fd6234258b53f6df2d6cc936ffb6b"
    "de"
  end
  language "en-CA" do
    sha256 "ec7a140a774eee91d17e6ab7b2f30baa7b9e531d3af03339fb5261ba113e0b9f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "dab266a4cda757b893569581cdb3d37038067594f85ed2e19a4aae9c1ba7fe44"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0a311013330ac14f83779a79a7c67f44bfb3d7b3da03455a66335bd24c12b20d"
    "en-US"
  end
  language "es" do
    sha256 "a4c6c065dac02744acf458733acbc1aaa170f3c20ac5f2c9214e98591427fbdc"
    "es-ES"
  end
  language "fr" do
    sha256 "fff504d934509404c7f48c987c49ea09b3e4acb4352e8b683dc25c45f99da6b1"
    "fr"
  end
  language "it" do
    sha256 "0fa0e6031554f5aaa117e14377073220d6c9f808a485bc44ba7e18a5ba4c3816"
    "it"
  end
  language "ja" do
    sha256 "52316d2ae4be995ffbfeeb94b84be01c4165ce9cbd00c5eddb491e665e3189ec"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "343cb228375c73e56d12c9361cf5d5bf90ecb7ab8ba5cca46c773d5ee196924f"
    "ko"
  end
  language "nl" do
    sha256 "80fffaf1ee20e34275446fbf522110a3836207fc91c7e2e41775071cd793745a"
    "nl"
  end
  language "pt-BR" do
    sha256 "2abb703fb084cf96e401539ec1aee93249aa9ce6aecc8781e86cbf0447bc413f"
    "pt-BR"
  end
  language "ru" do
    sha256 "bafabe225e1e3ad8dec30ff44d459c83361d9957b732e6a1bddb6000d5f95736"
    "ru"
  end
  language "uk" do
    sha256 "9d7c32e3a90fb35c1dad7b0e5bdc9bb9e9a72a87d0a7273b083b0e97c6277e12"
    "uk"
  end
  language "zh-TW" do
    sha256 "4f4981cb1582d66c9c44d407a8d5ab4433191f76492f65110ef5a696f1705e2e"
    "zh-TW"
  end
  language "zh" do
    sha256 "032dc255bd71f234a816abc128aa972d65e35c09ac0926a9c30bd7c246c9850a"
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

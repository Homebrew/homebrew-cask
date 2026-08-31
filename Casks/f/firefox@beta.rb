cask "firefox@beta" do
  version "156.0b1"

  language "cs" do
    sha256 "c0edca8bb053a2535f30319ba1ad4658351072b9d5c2dcf74e6c535161ebd89f"
    "cs"
  end
  language "de" do
    sha256 "c532349e9a96d275b394e524f0fff8ea9f9bc38c216b048c7d08900ea1037c61"
    "de"
  end
  language "en-CA" do
    sha256 "9fa883152856e73694fcc29d9663659068803b5a22d75a63fe8647b4d5301e96"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ccacc3a36b95fa30aedede1ceb43cf157db996ea09f2f219a22234f382cf4664"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4a7676ea27cdfe4990456fc4ce3fda340cd77888a186247aabde9ecbd58284a7"
    "en-US"
  end
  language "es-AR" do
    sha256 "cc59a7319903e5f4e8b8673bd57eed8ca7600fcb9a1de6005a28328672eb8ab2"
    "es-AR"
  end
  language "es-CL" do
    sha256 "2222745453522ec712ce440932e487ebde7874cf43d7dc2be546ab4f18ed363f"
    "es-CL"
  end
  language "es-ES" do
    sha256 "2fadba027ee561e52ccf72a5462d7f2087c14a1e1c16a7592e50d2e56b8492b1"
    "es-ES"
  end
  language "fi" do
    sha256 "44b7742242325339a3375ad611b0d0c4ed5af8ee6e4a3230461461f2735dabe4"
    "fi"
  end
  language "fr" do
    sha256 "5a64a4ce837f482acd225925187897c0cf4c675e288a6dedf1a9b403f6fa96c3"
    "fr"
  end
  language "gl" do
    sha256 "1c7b17a9e0653e81f87e04e9ef264813b1cf224e5a7d3c0d5f9b7553c012b103"
    "gl"
  end
  language "in" do
    sha256 "ae52b7d352a216ebd1630905fcedfa5812726953e6f3b89f950fa894955202ff"
    "hi-IN"
  end
  language "it" do
    sha256 "312fe5e7587d16d67460ee56f20954a33880513751bd66bcc64f6d90777ea3ae"
    "it"
  end
  language "ja" do
    sha256 "b20e54b1ad930448874ae840c865e62460903ead3eb7d544be5bb408f092dc3d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cd9dd8683f589d50b5aa3b2e082de479248135a1c0d24efcea3ae0bff2bbafc6"
    "nl"
  end
  language "pl" do
    sha256 "f7b21fd6a4d9448b8027409bde95ff60875778f9e630a883965203a835c4067d"
    "pl"
  end
  language "pt-BR" do
    sha256 "77e5c99e369901ca21c8440ec5d9e494e2b4f30ad962c136fa829e66b156be9f"
    "pt-BR"
  end
  language "pt" do
    sha256 "e953f2f0898baa123d25e3c83c7c6afac12bbee0ab4c4c9f0c774ea457fd089d"
    "pt-PT"
  end
  language "ru" do
    sha256 "c25f31e60ba23771503535300a0a94f24beabcd0a75dff6a53d18ce653bbe370"
    "ru"
  end
  language "uk" do
    sha256 "0f0010ff174ca2b2eeaee67fe7a27072e9400763324ebe153a3656021f102b6e"
    "uk"
  end
  language "zh-TW" do
    sha256 "f7600ce9d0ce12b8aa21208cf316de5bd8f9d6eb38f7d9eed31c7501203ed629"
    "zh-TW"
  end
  language "zh" do
    sha256 "243771398d08d815b820a9b1d9ed618f6ec1d0922cbd1f18b6b5886ac43e640f"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  name "Mozilla Firefox Beta"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#beta"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["LATEST_FIREFOX_RELEASED_DEVEL_VERSION"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "firefox",
    "firefox@cn",
    "firefox@esr",
  ]
  depends_on :macos

  app "Firefox.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.crashreporter",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.crashreporter.plist",
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

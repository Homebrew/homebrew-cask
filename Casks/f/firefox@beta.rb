cask "firefox@beta" do
  version "132.0b6"

  language "cs" do
    sha256 "cb288c6c8e6623e4b2b498055b93426b489aafad45eed957c5da0569d445835f"
    "cs"
  end
  language "de" do
    sha256 "a75812954d92d5af9158db5ef00b99fef351eb8d5755dd2b1e53c884dbe21c3b"
    "de"
  end
  language "en-CA" do
    sha256 "1ae14e75d4cb446bbbb13959f55cb934c805ca1ebea69c0e9614b8a28f914914"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1b286c521239dec18a3a69c103d7338d56838d6755ce3694e1158cddbab5073c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "39346f058ff1d4f881b08d486c468d378da82b3937bc0d792e89a7820fdabfff"
    "en-US"
  end
  language "es-AR" do
    sha256 "0c4d3dfc484c5b376ba47123d2c53196352381be2570404a91de956da2ebafb9"
    "es-AR"
  end
  language "es-CL" do
    sha256 "7ef4dc7230b03162275b46c3972662ea55c1209f2c704a186582f1994128627a"
    "es-CL"
  end
  language "es-ES" do
    sha256 "80a9d3e736c9f9971d2fd75395b49d2a9be850160b264a8b061f69f9f95b47ed"
    "es-ES"
  end
  language "fi" do
    sha256 "f7911f20911b1aa83bcbc2460299968911735e8727d6a80c547047282f58110d"
    "fi"
  end
  language "fr" do
    sha256 "a90e75d031d5f8780aa5b026dba7b2b6d13f0bc33b94fc800350b10027ca0bf8"
    "fr"
  end
  language "gl" do
    sha256 "0434cff3d2b99b801ea7df181465f6e45ccd2a666718cd00db6f9d61229b2a36"
    "gl"
  end
  language "in" do
    sha256 "a1d17154c1be6ba16b74efb6b4e2f60a72322df3c5c7bfcb1f72e10c7bdfe0f6"
    "hi-IN"
  end
  language "it" do
    sha256 "2c404be27bb130f1f8b1b54f43e6ec356e8df0208ebb637f23fe9e8c5dd1fd68"
    "it"
  end
  language "ja" do
    sha256 "552af479150b5a345e30837b91649ebb50a37e3d3f4f4e48a0f33ff7bca72374"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d102d96331cd39cfaecf003eac38ca29b5962a0e55215949f8a5f6d6e421b4f0"
    "nl"
  end
  language "pl" do
    sha256 "b08b44e024ed73550beaca290a317c04ee4d9a4bd3b6d31d3cd45bb23dce6674"
    "pl"
  end
  language "pt-BR" do
    sha256 "980f8d0196731f86dad3bfca81b7a49c68689a01c00825f985c60d6730c1db0f"
    "pt-BR"
  end
  language "pt" do
    sha256 "ecfa57d77e23b61e417ff7b400679e45cfe6315de8fb1d1ad9529109a6581bf3"
    "pt-PT"
  end
  language "ru" do
    sha256 "33f6307f1347fdaba948e9a8a7743800443df9032db28e854236dedac8139dba"
    "ru"
  end
  language "uk" do
    sha256 "3e652aa1f7966f88bad6c5077f0d58c28018636a2bbf754034881bcd284c1e3a"
    "uk"
  end
  language "zh-TW" do
    sha256 "146762613cb6c3e2329a7f33467334cc216f4289411a2d12884b28c86aeafb7b"
    "zh-TW"
  end
  language "zh" do
    sha256 "ad374c82eb26cb92ddfb02642dd204c48bd6ba0c915291da2f50640ab29ae066"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
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
  depends_on macos: ">= :catalina"

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

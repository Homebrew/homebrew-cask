cask "firefox@developer-edition" do
  version "134.0b4"

  language "ca" do
    sha256 "b1663788b557e470a4fbe34860ea541a36e54577d8abc1a777b17529c53ac838"
    "ca"
  end
  language "cs" do
    sha256 "55a35769163f93ec16eb7f5935fbed2ddc8996a89d85d8ae210e65ff47b1e82a"
    "cs"
  end
  language "de" do
    sha256 "8c0c4ec0af652ee5759272011959b0217787ff301232bbce8a246f9d4a4c21b5"
    "de"
  end
  language "en-CA" do
    sha256 "51c136afdb029954f4281e62bdea444290cf49b8562a2903bc86f7ee3c7d6722"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b84cb750f2ea2347266ff2ce7e4e10774805284cf55853ebbe94d33a9a9aeabf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "57b3669709440b948055fba2e9dc6a5177ff067c3495af8b20574215b8233fe5"
    "en-US"
  end
  language "es" do
    sha256 "c9d9b872a4f0494fc25f457f29f5d3a8a16b73394f4870fe24f4f9334c7f6244"
    "es-ES"
  end
  language "fr" do
    sha256 "e9e9ef1fd9693757dd0dc8618e966ffeb7419b4b22b06469cf5d3e9d83a3ab4b"
    "fr"
  end
  language "it" do
    sha256 "8314baa79642c2b378acfd615b54127742b40bcca9b387ae80420b2b77dc9fb8"
    "it"
  end
  language "nl" do
    sha256 "375d2694a6ec727d2d1ef2c2976f091ffd74f40fbd16172661fe82e37e73216b"
    "nl"
  end
  language "ja" do
    sha256 "6e98665850d75aa6561828f067fcfa5f8b8ea2a1bd7895d53e4c0fdfa30f7484"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "59ef8b5059bc5f4312c59ff4767ddbee56545767782df1f1ba07d9e5f81c8443"
    "pt-BR"
  end
  language "ko" do
    sha256 "1651a5307a2714be534ce9ef0e8a67fa7c49570ea658d7db7684831315cb0319"
    "ko"
  end
  language "ru" do
    sha256 "89d151febae0d4556cbbe6ed237b34586b10b01e5de13392272c320105891998"
    "ru"
  end
  language "uk" do
    sha256 "c7bfc5b7d39dba674777ffbd3b8da237d506eaa29caea032e6e25c3fce6f337b"
    "uk"
  end
  language "zh-TW" do
    sha256 "cc5fec3595015db00779f2beb6f1ad1a78c80dec051fcfbb47be488ccb078882"
    "zh-TW"
  end
  language "zh" do
    sha256 "5504fe782665c8e9f7cfdf8f76d968d2917e1e5c96e9aff2d61b8b24e0295c79"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Firefox Developer Edition.app"

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

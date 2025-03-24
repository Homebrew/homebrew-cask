cask "firefox@developer-edition" do
  version "137.0b10"

  language "ca" do
    sha256 "7dc7d2e7769df4d6fc35a759df0ca900b021ff526394cf62799c3e97b69b9829"
    "ca"
  end
  language "cs" do
    sha256 "f5adbc5a2f259675d57777a501debfc930bab349db4623d21490db3619a311df"
    "cs"
  end
  language "de" do
    sha256 "8d0c1f72005b3ac7d4497bfdc62a84ab53216dbe3318645dd90481571139bcf6"
    "de"
  end
  language "en-CA" do
    sha256 "938078f65cc9a6a111de795deae0edf36ecb78793566c96f4dc54a5c51ab9683"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7eb8a45dbab950c5c1d5e790970c80646bb9356dae0a6168b2c2ade6ebfd60d1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7b5b883aeacf5e2c397cd162b2c35ae844beec2f7ec3c6c50fcd8f24e7697627"
    "en-US"
  end
  language "es" do
    sha256 "777400f51e7fea7958865d32b013591aa536ef9c8fa5c2db56cfc63b41aa70b9"
    "es-ES"
  end
  language "fr" do
    sha256 "ea940420553f05278920b3b249d92e87529ed8c921ee9043048e838aa4144118"
    "fr"
  end
  language "it" do
    sha256 "f77e925211a5cd04a7f6b7b65c9266f2a71cc4687815585e80bb8bbb3cb854ba"
    "it"
  end
  language "nl" do
    sha256 "0126f713416128642813da350c18287d094c0420ab6d2f3a0a0cf50788d8443d"
    "nl"
  end
  language "ja" do
    sha256 "bf3fb44301724919c14ffe758e54b008b3d27faa71bd218d9ecf4733581b4f34"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "3df6f8085e4be3ac43656336e82ab6374f25b609e89385611ecd21369bf72d25"
    "pt-BR"
  end
  language "ko" do
    sha256 "d9e20559d1a3f367e9a701dda9cf59459c6733748967ccbddf401e2a5e8fdacf"
    "ko"
  end
  language "ru" do
    sha256 "a9cac431f553e22848933474ff902636b400d670e80aecabc0f8b93bb38f2a75"
    "ru"
  end
  language "uk" do
    sha256 "56e777e76f65f3803a9b57618788d408d55168fc5014fd99909417b4ff51b4be"
    "uk"
  end
  language "zh-TW" do
    sha256 "cdb4a2c9201f4cc0cf6c1a05b5eb958cb702a669704cb466b50b5bc2d2e5c580"
    "zh-TW"
  end
  language "zh" do
    sha256 "1754ea96a3d183d1f89093258d9693965805a0c1145540826c7f7e6e4299e939"
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

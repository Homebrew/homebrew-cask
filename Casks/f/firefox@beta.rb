cask "firefox@beta" do
  version "138.0b4"

  language "cs" do
    sha256 "d787733cfd3c336f6e66d212ac56b0596d526b9679c041a7f5b71a416f660c9b"
    "cs"
  end
  language "de" do
    sha256 "a3611a2af381b5152308482f1076c5bbf3ddde646783aa4a31a9f49604509f24"
    "de"
  end
  language "en-CA" do
    sha256 "07c1636e4bb0ddb0b4b55428f0776b0b9c65afb45b7c0f3c056dce11b22f128f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4d744c16453e1973853247ded71da41e1789fd44decbaed59a65b4d9510d3598"
    "en-GB"
  end
  language "en", default: true do
    sha256 "247f565630af339b2a2277482f912f3d0491deec42c362df518a4134e43fe056"
    "en-US"
  end
  language "es-AR" do
    sha256 "a8a6c3e24a11a2d7a06cd035684cff92dc6a2682ec688f042c3ca67ab294271f"
    "es-AR"
  end
  language "es-CL" do
    sha256 "dd36e6641c56e5ad8192c6de3d0f47b2188f0fda04af5fc76fea177e977fef50"
    "es-CL"
  end
  language "es-ES" do
    sha256 "ef0510e4b88978d7c4881cbd0ac6c3545238291d848ccc9903804c3f9ea8f562"
    "es-ES"
  end
  language "fi" do
    sha256 "303ea49d4e4db0e5a09067ee02b70ffef84eac15ff5ff39d2f25c741e29f75f1"
    "fi"
  end
  language "fr" do
    sha256 "64118812470b2168fadc6cc8839d973300887c06d8f16d7ebc92269f32122e74"
    "fr"
  end
  language "gl" do
    sha256 "ed376ace6b841e25ebc89640d8f86acb837aadbf061aec2de3830bb7a1154634"
    "gl"
  end
  language "in" do
    sha256 "37ded6945a4e8e64aa0739bee2a434469c894774073a3b7708ef419536cecb22"
    "hi-IN"
  end
  language "it" do
    sha256 "602bbe3a6ff183b8520896c89272e3089b8482b4f82db753e37c2d47c6dbae04"
    "it"
  end
  language "ja" do
    sha256 "5f9cf4139846fe38a8275d12efa9a73edb6a4a5bf7959250236567b6853bae33"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9917663cbf34f4969591df1ca5ea3173b8f4b80e04fdbca9beb7a206b0b5ecdf"
    "nl"
  end
  language "pl" do
    sha256 "a0fa883576ec429eb873e272a773103d365d0d6b9afaf8fef188e3684710289d"
    "pl"
  end
  language "pt-BR" do
    sha256 "93e11e47f7b69143d4c7ed3ec7613a497c9605c94a0cbbc6638f87d501b4200c"
    "pt-BR"
  end
  language "pt" do
    sha256 "c06b4939a60f3ca3c5880edcf4814c23ff87dca3ff12d895bc75cb96357eda90"
    "pt-PT"
  end
  language "ru" do
    sha256 "c7c7ec02965eac8303dc73d93eb6537a19e3cd97122263a15530e5152cde057c"
    "ru"
  end
  language "uk" do
    sha256 "4078d55e756824cdd4fab2e86bde0ee3bca34526f6ddc99544e8d9684a51f218"
    "uk"
  end
  language "zh-TW" do
    sha256 "b838137385fc61946527cb1f44172d1ba1950ca89ec9697bc9631daf2726164d"
    "zh-TW"
  end
  language "zh" do
    sha256 "a7793694449195b52ca0ab196272793707c22b6680adc63db8b2d559455928ee"
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

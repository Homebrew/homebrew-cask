cask "firefox@developer-edition" do
  version "138.0b8"

  language "ca" do
    sha256 "34b29a6312afb94c83869711ea5a1e930fe9d8cfdd232399782aaa2bdede1173"
    "ca"
  end
  language "cs" do
    sha256 "1a2df2ea127810ac2afe5f56325835c4512b180ad23b187c9112f5cb2fe27816"
    "cs"
  end
  language "de" do
    sha256 "171c6d5a49fc1b70d3b20f21c1dcfd659fe3a317498af591cf24435fe0121027"
    "de"
  end
  language "en-CA" do
    sha256 "8600666fa176b81e21e6e784849aa7b88a74440cf72da9f31c2b44dfd06db562"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f34eb0372df1d6cbb90ef73b5c1fe7f82b9350cd0ce4cc2415d2195ec62d4416"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d174ac53c79ba393a4fe23371b436a50c9ad2c11d6db18b76e9f00473fcd6e2c"
    "en-US"
  end
  language "es" do
    sha256 "c80142a40d0e8185c3e7e65972478328e00a5bfc2994ccece1ec0d31d95863bb"
    "es-ES"
  end
  language "fr" do
    sha256 "9d09e58e22998f0351842284af319a1039a84727e2a9d527fb8c7f12e01b5846"
    "fr"
  end
  language "it" do
    sha256 "df91c8ca94d9e71787f5d30e9506b45d9948c58dc3628da8cc7ac725ccc6a6f6"
    "it"
  end
  language "ja" do
    sha256 "19d9781d2e61608b5143e6892605ff05716e7dd2b3d98fa506ba0b9affa9f872"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "dfb1e7a8d0b4aef4df974db8ead15a2e0956477f344d90ec5ed42a21eefed8f8"
    "ko"
  end
  language "nl" do
    sha256 "3a09c32b2b3ea1c89a933cd19456fe9500fd56740ba143bd51a71bf07a71fad3"
    "nl"
  end
  language "pt-BR" do
    sha256 "4f44df1588b40de85a6fca5d392c9485635a1f6d7fa1bb215e4c7572d398f8f3"
    "pt-BR"
  end
  language "ru" do
    sha256 "ac23e457ec4f654a41a6ddd85fa1d8c010fbe8342b961f9380e4b25992b229ae"
    "ru"
  end
  language "uk" do
    sha256 "bd506505843b2390eaef410d139834c3457c5367b6f1a8e4ecedfc08e36803d3"
    "uk"
  end
  language "zh-TW" do
    sha256 "996edd779eebb38748cc6b330c7779455396976114d28fc96178627db6391317"
    "zh-TW"
  end
  language "zh" do
    sha256 "8d3d783c09cae166a1f862d6fbd2c73f6453ec831524a88d3ed2ca666b0e54c5"
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

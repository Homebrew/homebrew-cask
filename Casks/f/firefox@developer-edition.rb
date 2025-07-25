cask "firefox@developer-edition" do
  version "142.0b3"

  language "ca" do
    sha256 "60d5922ddafb7e7b6a78849a25ce0cb92f591a59151339b6bf63e57b04d3fd2a"
    "ca"
  end
  language "cs" do
    sha256 "c1bf6ba4a3ac53579aa2a70caaf319491f63e062f470332ef23df477991c3954"
    "cs"
  end
  language "de" do
    sha256 "3f03dee3a87230f8ddcf6bf421bd5d9a71e33b1d88f4a69730b48533f969da03"
    "de"
  end
  language "en-CA" do
    sha256 "095059b12f353ce70b629787e07ccf2666de21e15388543fa8341e8c796ff420"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d227352e830c6fbf0068eefc9eb6427a75ce42954d6d87c6bd71178e9dc940dc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "830427376bb7488a637d0600b82ad872850e7c864ad5824bab2cddc18553844e"
    "en-US"
  end
  language "es" do
    sha256 "e766373c5544da342e5ceddbf490338062f0a33eedeb1d67faf9f09571572102"
    "es-ES"
  end
  language "fr" do
    sha256 "e7efdc6e7146771323ab2a8adc3a45313d840dd08e5f361773826fe08d51d162"
    "fr"
  end
  language "it" do
    sha256 "df0b7e46676e08010448957ff96663b64d6cab6b421141e633f9b32ebbea453b"
    "it"
  end
  language "ja" do
    sha256 "926f71c575ee8b6113248bee7bf1422fc456f56787a7524e050b818c23b7f4d2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1af6ef87294e85b6d58adb4f6cf92c9a804a18958f9f2fda1a4371bc81ab4d4f"
    "ko"
  end
  language "nl" do
    sha256 "1cc1c17851daf9dde3210c114958941a932da8e0bc16ac629d384000cd2de441"
    "nl"
  end
  language "pt-BR" do
    sha256 "223a68f4786563d01257d1ea738bb9821e4959cd0be875b2e5ba81b9affe68d9"
    "pt-BR"
  end
  language "ru" do
    sha256 "d66dc3dce22febf01ba912d86d11b103dbbc52bd2f03797546c917912d74cbdc"
    "ru"
  end
  language "uk" do
    sha256 "e05e01830cde92cd62e198dba5ea888abe7fe0812ccd49762b48f3c9a5bfb70b"
    "uk"
  end
  language "zh-TW" do
    sha256 "c08959589505eb0b318861467b6873e9671d53abe960c40592f12e5e91e10162"
    "zh-TW"
  end
  language "zh" do
    sha256 "37e908ad49667422dbfa4bafbed5b2304293e39ebe5fed207d48ae974d5c8636"
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

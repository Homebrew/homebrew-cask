cask "firefox@developer-edition" do
  version "158.0b5"

  language "ca" do
    sha256 "a8ed7e84a2180cdabfea98a87ad6e5ec9c9c43b10b66ff8f9d204af086239775"
    "ca"
  end
  language "cs" do
    sha256 "005dac0319f2d2a454034a3f8b8b823b4d24e47315994658d60a21237d0482ee"
    "cs"
  end
  language "de" do
    sha256 "50d6496343727404fafaab65cec90b1a05974c484605add84e0afe2770f7b1af"
    "de"
  end
  language "en-CA" do
    sha256 "b78f3223c56a43e5b672f5e75f0ad3c36b060deae1d953d9ee6a173a812c9cf9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6eab9b71bcfb442ffbb6628efa76cd5f5f100014ac1f796cbbbceede3abc1b96"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c281c29fa527ee480c608e34b223c98b32de488073b60c2cc13b8b5869f52c3c"
    "en-US"
  end
  language "es" do
    sha256 "fdbc835fd305e65920d49b5d3f020373cc347e7cbc3c79f683b0a2394bf1eb1a"
    "es-ES"
  end
  language "fr" do
    sha256 "c9e36dd31211b20c400005815093d3941295e30a22e8393827897707cef79f06"
    "fr"
  end
  language "it" do
    sha256 "55f970305e926b931f4389dc70e021b95472c75fc3d0ed4c120fbe864202c368"
    "it"
  end
  language "ja" do
    sha256 "a77248312cb0e9c5230809569c1e717f57453e3cf50687897e14ba4a8b5d7ff1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "67f9ffc1ec4327376eb007a248659a8dad4043e349b0ca23bc8e4803dcc7d1f8"
    "ko"
  end
  language "nl" do
    sha256 "d8d2f4c352bd5ac6f61585099db30dd667c2fccfe1e9d29c4528750755bc410b"
    "nl"
  end
  language "pt-BR" do
    sha256 "a4b894800b7268c71c165deaab3fce25fa1916a5d8dd622e6d2781574b712375"
    "pt-BR"
  end
  language "ru" do
    sha256 "ef3f2a8b41f79208a33a152b81551f8d278c74816e0348eb73afb79b14e65716"
    "ru"
  end
  language "uk" do
    sha256 "9ce02b1b79d37d4c07ab189063449285f91f2f8e943708be877e6002ed89adda"
    "uk"
  end
  language "zh-TW" do
    sha256 "5b6189898444b3a323af44b00fa476aabf02dc0115af7eb33c064908a266ddda"
    "zh-TW"
  end
  language "zh" do
    sha256 "789f22b6ca6adec7970305641e2a52e486c50c07f71be4345f5cf8f74744dcca"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
  depends_on :macos

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
        "~/Library/Preferences/org.mozilla.firefoxdeveloperedition.plist",
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

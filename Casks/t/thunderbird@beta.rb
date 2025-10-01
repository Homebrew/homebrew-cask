cask "thunderbird@beta" do
  version "144.0b3"

  language "cs" do
    sha256 "3049a6363f9a701fde960a3d4d0740834247232e9d425cf7e8a9c723fb387cd0"
    "cs"
  end
  language "de" do
    sha256 "02685c34e0b6c0a796940f170d849b00617e58300dc73ebb49c663e40a55984f"
    "de"
  end
  language "en-GB" do
    sha256 "589c4e5aacfcc0183f8bbdbb054e0c29b5a316343df24836613228a88f483f6d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "31d43002d77d0b4322f5c417e5bd9f6442bcbb0dd3a18202e78a8c3235facf76"
    "en-US"
  end
  language "fr" do
    sha256 "1f92ea7e2ce32c86f80d021aa95eb8543b3df29e5646fff7dcaffbb7b1d8cb2b"
    "fr"
  end
  language "gl" do
    sha256 "e895fc68321641430d7ab24f66102d3bbdef9d81edd027483ad00b366f810730"
    "gl"
  end
  language "it" do
    sha256 "3109007e22ee5403716888065c0c18cd92a18de646eac3929cc358c8bbfefc7a"
    "it"
  end
  language "ja" do
    sha256 "df863a8952b9b12c237f91a07b75d24780c3f83d6577ecb43b033318dd573ce9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ef76638da8760789361edaf475f1e651547d23f8cddd46c8409c304951c6e9cb"
    "nl"
  end
  language "pl" do
    sha256 "b23dbae1921b8d10866ef1f84c8b18679038ec2e86c8ad7961f7236dd9f2c18a"
    "pl"
  end
  language "pt" do
    sha256 "4d76b3d1a77dc845147584a25a30370c24a67d5da750c6de148be861c2b65324"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f76dc316467bf6a2f7b1567f8c0709d8e7c0fdcb954c4f15f93882aad9cd6354"
    "pt-BR"
  end
  language "ru" do
    sha256 "0abf5ccad3ac39b1cb37921aff1d5ed905e20f486fbb2cdfe4a0ac9213fcd1c5"
    "ru"
  end
  language "uk" do
    sha256 "08de03575d3310851464046d39e7d23bb3cad0282d6520b464a35c2aa9148a63"
    "uk"
  end
  language "zh-TW" do
    sha256 "cf2a1518f9246c61019425a788e501deeaf44d492ce86dc44a24cfb91e3b6e53"
    "zh-TW"
  end
  language "zh" do
    sha256 "9ca2725a32791fbb1f8fdd55cfc4d5f06778ca953d04dac5cb50dcbe937c3cc2"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird Beta"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/beta/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    strategy :json do |json|
      json["LATEST_THUNDERBIRD_DEVEL_VERSION"]
    end
  end

  auto_updates true

  app "Thunderbird Beta.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end

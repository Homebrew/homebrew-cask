cask "seamonkey" do
  version "2.53.19"

  language "cs" do
    sha256 "222e50edb922d4dcc32dd2923dac07af6f70d56cfcf47fa20e13fb6adb6b38a5"
    "cs"
  end
  language "de" do
    sha256 "bca5bb6538dbf3f58611181ee5a47c04ad6ed80f25ebc6304c87ee79db3c683e"
    "de"
  end
  language "el" do
    sha256 "91b1737f36089b9dd3ad8f90dd4f9d988d8d102895c8261c527a02dcd07f05ec"
    "el"
  end
  language "en-GB" do
    sha256 "26b15bd3b78c5fe09fb7899a38ae79eed7841a6577379f57b330ca7a9c4023d6"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "48a9eaa852759f99b708976789ad0bbb1a6d61b3dde2b6b31c4cfb6714569aa0"
    "en-US"
  end
  language "es-AR" do
    sha256 "92ce0260d1dafe062b36d562808e56d46de7b4632651be6340c661ab7fc70079"
    "es-AR"
  end
  language "es-ES" do
    sha256 "37ffab9e1c85285c1fb89265441c10a05a0177dbe5e42b59c1bab614729675a3"
    "es-ES"
  end
  language "fi" do
    sha256 "836dd2f4212d0d037ef8adb77c27e14e2dca484c7d4904236768654897a83b81"
    "fi"
  end
  language "fr" do
    sha256 "d3277eb60e93496a642882877f004530c3378ad08df1fab6887bb8144f415fd5"
    "fr"
  end
  language "hu" do
    sha256 "302a87aa1c1d4b83500786ef5e028cff770562da2030d7aab2dc44eee0104324"
    "hu"
  end
  language "it" do
    sha256 "84753c4c521140b49704b85b8db7bb49410c1b6dec4a69e8bd13e763eda8f2d4"
    "it"
  end
  language "ja" do
    sha256 "69201036e717f9848cdf1fe3a17a6c212d27ec64d25bbfe7132fa6fe1b691966"
    "ja-JP-mac"
  end
  language "ka" do
    sha256 "c16fa4aead17380b76a3e18960d0958db8b08a247d3b906dc9587d269c04ebbe"
    "ka"
  end
  language "nl" do
    sha256 "ab9538a25a4f7aa1f7d5579c1518919e4bab50db58c7cfc21ed1c374945a0c7f"
    "nl"
  end
  language "no" do
    sha256 "a4a4e3616482452d198e20e45d343ad9ba7a3bd32c7adb92a0b3b081fd0224b3"
    "nb-NO"
  end
  language "pl" do
    sha256 "85b0f4d41297eadd0f281ff54d0a6aa41363d65755edf66ca46a294ef60e40ae"
    "pl"
  end
  language "pt-BR" do
    sha256 "724f0734d5500563f7a17fbcd00ad30521fbc2ce27403e8ad8fe8b52ca4ea08e"
    "pt-BR"
  end
  language "pt" do
    sha256 "b702ab07adac06ed8ee5380009722747fbd0ac2cfe6e803bc1573d848b5367a4"
    "pt-PT"
  end
  language "ru" do
    sha256 "f2d8b3d3dc50a6036bf373696e908143aa26d6efae8b5377ae8a39a7d587d76a"
    "ru"
  end
  language "sk" do
    sha256 "93c75ddcfcdee9fda0f0aced75a16d9a9f052f89ad55dd42fd3f990065eeaeca"
    "sk"
  end
  language "sv" do
    sha256 "5aff16227aa7c5cb37d2a0a76a77d591ca73c104a8a35603dccad5d16e5af94e"
    "sv-SE"
  end
  language "zh-TW" do
    sha256 "92a2f469517bb4e6ba8abd14a433d70b619e54edfe37c6ae3306516437476792"
    "zh-TW"
  end
  language "zh" do
    sha256 "c8c22e993e7eb7b6c6f347ba1c8ec17580a1a9fe740b18325c01263a125f955a"
    "zh-CN"
  end

  url "https://archive.seamonkey-project.org/releases/#{version}/mac/#{language}/seamonkey-#{version}.#{language}.mac.dmg"
  name "SeaMonkey"
  desc "Development of SeaMonkey Internet Application Suite"
  homepage "https://www.seamonkey-project.org/"

  livecheck do
    url "https://www.seamonkey-project.org/releases/"
    regex(%r{href=.*?/seamonkey-(\d+(?:\.\d+)+)\.en-US\.mac\.dmg}i)
  end

  auto_updates true

  app "SeaMonkey.app"

  zap trash: [
    "~/Library/Application Support/SeaMonkey",
    "~/Library/Caches/SeaMonkey",
    "~/Library/Preferences/org.mozilla.seamonkey.plist",
    "~/Library/Saved Application State/org.mozilla.seamonkey.savedState",
  ]

  caveats do
    requires_rosetta
  end
end

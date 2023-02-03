cask "onyx" do
  on_el_capitan do
    version "3.1.9"
    sha256 "7f8df2c9e97eb465aba88b000fa2f58958421efeba1239303ff0071e9b7b0536"
    url "https://www.titanium-software.fr/download/1011/OnyX.dmg"

    depends_on macos: :el_capitan
  end
  on_sierra do
    version "3.3.1"
    sha256 "887272335926005f49bbd35f66eb3ea5a6c19d3a35a8fada68357ab5860a7c1b"
    url "https://www.titanium-software.fr/download/1012/OnyX.dmg"

    depends_on macos: :sierra
  end
  on_high_sierra do
    version "3.4.9"
    sha256 "60e4f56fb2e5457aca1aa1d2a9be95502a310b0de75112e91b7c89bf4a2be829"
    url "https://www.titanium-software.fr/download/1013/OnyX.dmg"

    depends_on macos: :high_sierra
  end
  on_mojave do
    version "3.6.8"
    sha256 "d27529bc497b03c2486fcb8f0d3bfbb4e4a30d4abe25eddcd059ab47aaea6672"
    url "https://www.titanium-software.fr/download/1014/OnyX.dmg"

    depends_on macos: :mojave
  end
  on_catalina do
    version "3.8.7"
    sha256 "0dd8119ad3441c5130ca584ac90ad450c272aab8b577925561a2536da48d2d54"
    url "https://www.titanium-software.fr/download/1015/OnyX.dmg"

    depends_on macos: :catalina
  end
  on_big_sur do
    version "4.0.2"
    sha256 "18659c76972690bb58f1c1b850ae2c6c9991fdeb9c22790daa1b18c9fa74cb8e"
    url "https://www.titanium-software.fr/download/11/OnyX.dmg"

    depends_on macos: :big_sur
  end
  on_monterey do
    version "4.2.7"
    sha256 "5d4bd7ca16fbd2bd70a383f74e6c254d281776ae0a012d1484c392cc4dc5ee28"
    url "https://www.titanium-software.fr/download/12/OnyX.dmg"

    depends_on macos: :monterey
  end
  on_ventura do
    version "4.3.6"
    sha256 "dcf443b5585d85f8e5c03124a37a982c0885ff8826e33de93c6ffa60221bebc5"
    url "https://www.titanium-software.fr/download/13/OnyX.dmg"

    depends_on macos: :ventura
  end

  name "OnyX"
  desc "Verify system files structure, run miscellaneous maintenance and more"
  homepage "https://www.titanium-software.fr/en/onyx.html"

  livecheck do
    url :homepage
    regex(/>\s*OnyX\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s.-]*\s+#{MacOS.version}\s*</i)
  end

  app "OnyX.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.titanium.OnyX.help*",
    "~/Library/Logs/OnyX.log",
    "~/Library/Preferences/com.titanium.OnyX.plist",
    "~/Library/Preferences/OnyX.plist",
    "~/Library/Saved Application State/com.titanium.OnyX.savedState",
  ]
end

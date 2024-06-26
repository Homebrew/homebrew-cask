cask "choosy" do
  on_el_capitan :or_older do
    version "1.1"
    sha256 "c6530d4e0dddbf47c6a8999bda8f3a5ef1857f4481b9325e56cfe00f05b2022c"

    livecheck do
      skip "Legacy version"
    end

    prefpane "Choosy.prefPane"
  end
  on_sierra do
    version "1.3"
    sha256 "cb1f40df11ac1b52354f4b81367462d2646a6d023c64bafe5022fcec52f796cd"

    livecheck do
      skip "Legacy version"
    end

    prefpane "Choosy.prefPane"
  end
  on_high_sierra do
    version "1.3"
    sha256 "cb1f40df11ac1b52354f4b81367462d2646a6d023c64bafe5022fcec52f796cd"

    livecheck do
      skip "Legacy version"
    end

    prefpane "Choosy.prefPane"
  end
  on_mojave do
    version "2.1"
    sha256 "758da621d3a92358885333b767d64b024197a8147a339b1a0d14e938673452f9"

    livecheck do
      skip "Legacy version"
    end

    pkg "Choosy.pkg"
  end
  on_catalina do
    version "2.2.1"
    sha256 "71fe3c3c592d449063189a575a39b1f00735ee20cf1de94552896f5f8e93bf47"

    livecheck do
      skip "Legacy version"
    end

    pkg "Choosy.pkg"
  end
  on_big_sur :or_newer do
    version "2.3.1"
    sha256 "8d6a44b78ed256d6f502872fd1f62cf1f7fea877906bedddc5bbf26f93b6ea57"

    livecheck do
      url "https://choosy.app/sparkle/feed"
      strategy :sparkle
    end

    pkg "Choosy.pkg"
  end

  url "https://downloads.choosy.app/choosy_#{version}.zip"
  name "Choosy"
  desc "Open links in any browser"
  homepage "https://choosy.app/"

  uninstall quit:    "com.choosyosx.Choosy",
            pkgutil: "com.choosyosx.Choosy"

  zap trash: [
    "~/Library/Application Support/Choosy",
    "~/Library/Preferences/com.choosyosx.ChoosyPrefPane.plist",
  ]
end

cask "orion" do
  on_mojave :or_older do
    version "0.99,128"
    sha256 "5219ca7c7d3b37bc254411a37779d2915f5341e55f9895dd87ca771a48c0fe00"

    url "https://browser.kagi.com/updates/10_14/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/10_14/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :mojave
  end
  on_catalina do
    version "0.99,128"
    sha256 "219e56e83b0b44f0683961163da79ba5f8dad34e7fe210d3f67fcf8aa3010dd0"

    url "https://browser.kagi.com/updates/10_15/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/10_15/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :catalina
  end
  on_big_sur do
    version "0.99,128"
    sha256 "a41e555c28c1e57a1badeae1c3a8989cac822dd65b62c96f4c9d25b110efc1ac"

    url "https://browser.kagi.com/updates/11_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/11_0/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :big_sur
  end
  on_monterey do
    version "0.99,128.1"
    sha256 "d5ac43ffde78eabb347567381cdc7549147d48f7513b0f3c05905246f5c4ae9e"

    url "https://browser.kagi.com/updates/12_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/12_0/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :monterey
  end
  on_ventura do
    version "0.99,128.1"
    sha256 "3234f35fe2bf052fd14d542e92c63663b29a0027c231b8789f6cbcc68ef04a38"

    url "https://browser.kagi.com/updates/13_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/13_0/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :ventura
  end
  on_sonoma :or_newer do
    version "0.99,128.1"
    sha256 "72b33fa06f51f331fb0c3bec35170189d32a137a05eb1fbd6c7bc1c17c696e07"

    url "https://browser.kagi.com/updates/14_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/14_0/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :sonoma
  end

  name "Orion Browser"
  desc "WebKit based web browser"
  homepage "https://browser.kagi.com/"

  auto_updates true

  app "Orion.app"

  uninstall quit: "com.kagi.kagimacOS"

  zap trash: [
    "~/Library/Application Scripts/com.kagi.kagimacOS.ShareExtension",
    "~/Library/Application Support/Orion",
    "~/Library/Caches/com.kagi.kagimacOS",
    "~/Library/Containers/com.kagi.kagimacOS.ShareExtension",
    "~/Library/HTTPStorages/com.kagi.kagimacOS*",
    "~/Library/Preferences/com.kagi.kagimacOS.plist",
    "~/Library/WebKit/com.kagi.kagimacOS",
  ]
end

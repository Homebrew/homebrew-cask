cask "orion" do
  version "0.99,123.1"

  on_mojave do
    sha256 "8763dd9d18e5c87228d790e72e6f1744cd6bff18f309be28cab9069d732e9cef"

    url "https://browser.kagi.com/updates/10_14/#{version.csv.second}.zip"

    livecheck do
      url "https://browser.kagi.com/updates/10_14/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :mojave
  end
  on_catalina do
    sha256 "d028b0703d2ae40167767dcebb06389bf5fb2cef37d6b854cd9fc37a8ee07eed"

    url "https://browser.kagi.com/updates/10_15/#{version.csv.second}.zip"

    livecheck do
      url "https://browser.kagi.com/updates/10_15/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :catalina
  end
  on_big_sur do
    sha256 "c69ccec5e9e3357fe3067ac07de64f22444a9d80be1317ebd8b28ff335e4ee77"

    url "https://browser.kagi.com/updates/11_0/#{version.csv.second}.zip"

    livecheck do
      url "https://browser.kagi.com/updates/11_0/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :big_sur
  end
  on_monterey do
    sha256 "a213e35dc0e01206f57d03fd08686e27d677563160395b0f69afbe809cc6f235"

    url "https://browser.kagi.com/updates/12_0/#{version.csv.second}.zip"

    livecheck do
      url "https://browser.kagi.com/updates/12_0/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :monterey
  end
  on_ventura do
    sha256 "0e3a7a273f75cc65f9347fd54be2dd614e16f2c457b7349b6f988414667674d4"

    url "https://browser.kagi.com/updates/13_0/#{version.csv.second}.zip"

    livecheck do
      url "https://browser.kagi.com/updates/13_0/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :ventura
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

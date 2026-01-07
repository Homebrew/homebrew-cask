cask "orion" do
  on_catalina :or_older do
    version "1.0.2,141"
    sha256 "cf31de1b3bb5a25f0b548b6de33702d78899125478cdd892bf8af73371ac5051"

    url "https://cdn.kagi.com/updates/10_15/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/10_15/appcast.xml"
      strategy :sparkle
    end
  end
  on_big_sur do
    version "1.0.2,141"
    sha256 "a3cc0440654e74f7f1adbc44742ce1d68cb4451a6bbbe4bc125b019881a34eff"

    url "https://cdn.kagi.com/updates/11_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/11_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_monterey do
    version "1.0.2,141"
    sha256 "d17e9c5ff72ccd410ddffd61405dbf9342c9b2ba6d06df02369f373b76e2373a"

    url "https://cdn.kagi.com/updates/12_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/12_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_ventura do
    version "1.0.2,141"
    sha256 "b9f8e58f83ab46f9a6004d8e4d84b4598850b322965c2be10d3fd6ef495c1021"

    url "https://cdn.kagi.com/updates/13_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/13_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_sonoma do
    version "1.0.2,141"
    sha256 "bf52f7abb4843755dda6333dc4e125a0924a2afc92594536c74699488b19f0aa"

    url "https://cdn.kagi.com/updates/14_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/14_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_sequoia do
    version "1.0.2,141"
    sha256 "e5b77a73f632c4191452370aa161a90ff1ac0876e3aa42842d0c1074e15f65f0"

    url "https://cdn.kagi.com/updates/15_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/15_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_tahoe :or_newer do
    version "1.0.2,141"
    sha256 "6e555c53c3bbd8c5e39f54c10669847aee80cd89ab24ebded2194fab317d4654"

    url "https://cdn.kagi.com/updates/26_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/26_0/appcast.xml"
      strategy :sparkle
    end
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
    "~/Library/Caches/com.kagi.kagimacOS.IconService",
    "~/Library/Containers/com.kagi.kagimacOS.ShareExtension",
    "~/Library/HTTPStorages/com.kagi.kagimacOS*",
    "~/Library/Preferences/com.kagi.kagimacOS.plist",
    "~/Library/WebKit/com.kagi.kagimacOS",
  ]
end

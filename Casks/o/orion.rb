cask "orion" do
  on_catalina :or_older do
    version "0.99,136"
    sha256 "6f7906497cbac3e9f6356b1b8c451cc5acbaec1b92d8574dd738d3577c1eab20"

    url "https://cdn.kagi.com/updates/10_15/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/10_15/appcast.xml"
      strategy :sparkle
    end
  end
  on_big_sur do
    version "0.99,136"
    sha256 "983df8d31e5f45ffd12402c3fe5d6b356baf5be50f6003609490e5ce83b20049"

    url "https://cdn.kagi.com/updates/11_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/11_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_monterey do
    version "0.99,136"
    sha256 "598c6af3141d7cfabf82107dbdfbb1f1ed360ceb1634779cda725eb0d24a3d7c"

    url "https://cdn.kagi.com/updates/12_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/12_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_ventura do
    version "0.99,136"
    sha256 "feb5bb9840de8be9f3cc977c4d723e7f0d21b9df9944a3705dad5351172899bd"

    url "https://cdn.kagi.com/updates/13_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/13_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_sonoma do
    version "0.99,136"
    sha256 "8098d6ba30227897928f85a0194515ded85fb92587f9f8cb30f469ca66990782"

    url "https://cdn.kagi.com/updates/14_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/14_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_sequoia :or_newer do
    version "0.99,136"
    sha256 "475d879b6ce14801f52e513738e7bea214d1a4499a9584d4ca52656ba54bc0e1"

    url "https://cdn.kagi.com/updates/15_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/15_0/appcast.xml"
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
    "~/Library/Containers/com.kagi.kagimacOS.ShareExtension",
    "~/Library/HTTPStorages/com.kagi.kagimacOS*",
    "~/Library/Preferences/com.kagi.kagimacOS.plist",
    "~/Library/WebKit/com.kagi.kagimacOS",
  ]
end

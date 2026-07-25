cask "orion" do
  on_catalina :or_older do
    version "1.1.1,149"
    sha256 "7e49513c8e00bf8696d55262c95ff50f676029b8c776586aed5616499cae44f4"

    url "https://cdn.kagi.com/updates/10_15/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/10_15/appcast.xml"
      strategy :sparkle
    end
  end
  on_big_sur do
    version "1.1.1,149"
    sha256 "b2d2d1ce3cc9d1fcfcc9267c696c76aa0115be52dc4c91055b8374319c2783c3"

    url "https://cdn.kagi.com/updates/11_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/11_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_monterey do
    version "1.1.1,149"
    sha256 "101d56b5639c577ba93d67651bfc4b20f54cd8630a2fd5cb46dd0318deecaf99"

    url "https://cdn.kagi.com/updates/12_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/12_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_ventura do
    version "1.1.1,149"
    sha256 "593ee3ccddcb268b31c39011baf32e25510b0f46c9ce764153d250dce01d75a0"

    url "https://cdn.kagi.com/updates/13_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/13_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_sonoma do
    version "1.1.1,149"
    sha256 "bac35cf393edad2920586ab4dffcdd19c9e4f9d3deb86bf9ac7dadda54437665"

    url "https://cdn.kagi.com/updates/14_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/14_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_sequoia do
    version "1.1.1,149"
    sha256 "8ad6676707508e83c6a211a43f8673d4faf2ae48875d4236239ecb0cbb27f414"

    url "https://cdn.kagi.com/updates/15_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/15_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_tahoe :or_newer do
    version "1.1.1,149"
    sha256 "0b49ad18d13d3abd1a9457b61aee0b91170732f93544b5d9fe6528fd7b560768"

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
  depends_on :macos

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

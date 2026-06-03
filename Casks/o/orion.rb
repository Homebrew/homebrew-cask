cask "orion" do
  on_catalina :or_older do
    version "1.0.7,146"
    sha256 "a8a9ec28db7dd7421b399c0b0bd6d5ddcc12ca0213b9038ba0128c6c1d7ec58c"

    url "https://cdn.kagi.com/updates/10_15/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/10_15/appcast.xml"
      strategy :sparkle
    end
  end
  on_big_sur do
    version "1.0.7,146"
    sha256 "2810d46ebb48f9087e455af1fac6a7f324b8c9f9edb0b502be22a99832d05879"

    url "https://cdn.kagi.com/updates/11_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/11_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_monterey do
    version "1.0.7,146"
    sha256 "8fac1aa0536fa89ede7b932bac1d7f0cb88bed312156844ca9dd83d4bc89f2bd"

    url "https://cdn.kagi.com/updates/12_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/12_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_ventura do
    version "1.0.7,146"
    sha256 "7a63958663f3a089abb5c782ffcf07a85669054903e121390762a8042cbd4860"

    url "https://cdn.kagi.com/updates/13_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/13_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_sonoma do
    version "1.0.7,146"
    sha256 "28a9eebcae33a7b22a1823f964a6e08c5fbec3ca20b5379dc8e664b648d9d9a0"

    url "https://cdn.kagi.com/updates/14_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/14_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_sequoia do
    version "1.0.7,146"
    sha256 "405fe8cede0a5690e4a5280e3eca7d1b52636fa53fbdcb1bfe260842a310912b"

    url "https://cdn.kagi.com/updates/15_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/15_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_tahoe :or_newer do
    version "1.0.7,146"
    sha256 "ff47f1444d3482633c31085eab216df33fd314660b4adf024544b330a53e63e0"

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

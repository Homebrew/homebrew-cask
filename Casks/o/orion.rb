cask "orion" do
  version "0.99,127.2"

  on_mojave :or_older do
    sha256 "1314005a42c4301f280e8fc9889c3f38a21af549083ccbcaf7fd428543c4c569"

    url "https://browser.kagi.com/updates/10_14/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/10_14/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :mojave
  end
  on_catalina do
    sha256 "7ac014523ddbf91e05e957448d0ce9b40b8eb6ea4da1d78fd61fc52922b685c4"

    url "https://browser.kagi.com/updates/10_15/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/10_15/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :catalina
  end
  on_big_sur do
    sha256 "34312f618b103a3b6e793c8740567d5698da310dbaf9ee25c97f69cd52de8586"

    url "https://browser.kagi.com/updates/11_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/11_0/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :big_sur
  end
  on_monterey do
    sha256 "14a1891effc4ae53aeddab8044f9223d814b09991db691a372b706eb4490f2fa"

    url "https://browser.kagi.com/updates/12_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/12_0/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :monterey
  end
  on_ventura do
    sha256 "c69e6ea8750a67f32e38387de9e3c8f2170d307463635403e9924cdba4f4bc4e"

    url "https://browser.kagi.com/updates/13_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/13_0/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :ventura
  end
  on_sonoma :or_newer do
    sha256 "1a674dd4712296cebebcdd672f98461f203ece5e6da97eed1706727725280e86"

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

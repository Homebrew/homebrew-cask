cask "orion" do
  version "0.99,126.2"

  on_mojave :or_older do
    sha256 "065ad7a0475376351239986364119957b4f7cc56303d2cf8888d8b924ba18926"

    url "https://browser.kagi.com/updates/10_14/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/10_14/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :mojave
  end
  on_catalina do
    sha256 "5a6762333aae462b0ce43c5ae85f3abeea701690e225891573416eb2f0e9c0ec"

    url "https://browser.kagi.com/updates/10_15/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/10_15/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :catalina
  end
  on_big_sur do
    sha256 "c8883b12b8a801b5f2df45a87a5eb097a76250850caefebc3b2b02b03209bff6"

    url "https://browser.kagi.com/updates/11_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/11_0/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :big_sur
  end
  on_monterey do
    sha256 "180bbcf2232e439e317afefa4d563009d2c2f8018121421ab7f509925ce7dbf4"

    url "https://browser.kagi.com/updates/12_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/12_0/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :monterey
  end
  on_ventura do
    sha256 "c4c89e12d44ac650210cd642e27fd33583835947dcd389277a146ba75cf6cfe1"

    url "https://browser.kagi.com/updates/13_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/13_0/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: :ventura
  end
  on_sonoma :or_newer do
    sha256 "9102280a390987373c6ec64faafae913695b1984561c16b4226baa64888df7f6"

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

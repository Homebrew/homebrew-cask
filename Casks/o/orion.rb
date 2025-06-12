cask "orion" do
  version "0.99,134"

  on_mojave :or_older do
    sha256 "97fc6544a0a8f4f3f84bb2443758177b50b8faa0a33dbfc57c4717f81a6b9812"

    url "https://cdn.kagi.com/updates/10_14/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/10_14/appcast.xml"
      strategy :sparkle
    end
  end
  on_catalina do
    sha256 "6433ad84a75a73ae83267695c9cc5eb6e8068f28034d1fce9e76429c55230b10"

    url "https://cdn.kagi.com/updates/10_15/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/10_15/appcast.xml"
      strategy :sparkle
    end
  end
  on_big_sur do
    sha256 "4dfa80b65ca1006be575fe4e5577c4c4898a909aab1ca2749009edb0fa26ab2f"

    url "https://cdn.kagi.com/updates/11_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/11_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_monterey do
    sha256 "6c19b6b90eed4210db20a95193e30709a797199091f0f95919e79e478f617da4"

    url "https://cdn.kagi.com/updates/12_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/12_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_ventura do
    sha256 "f06459a3200043f4e38ec8af2489ffeddc11bfb093f2985eadeb171be4eeec4e"

    url "https://cdn.kagi.com/updates/13_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/13_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_sonoma do
    sha256 "4f0ba72398a599f44e9d5fafc2f667a279b65cfdd38e5c11b692e531f4d2cefe"

    url "https://cdn.kagi.com/updates/14_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/14_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_sequoia :or_newer do
    sha256 "91f0261e8b662da378b1c8fb3fd42529afe64af9b049f5c32c9c5bc7baa23428"

    url "https://cdn.kagi.com/updates/15_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/15_0/appcast.xml"
      strategy :sparkle
    end
  end

  name "Orion Browser"
  desc "WebKit based web browser"
  homepage "https://browser.kagi.com/"

  no_autobump! because: :requires_manual_review

  auto_updates true
  depends_on macos: ">= :mojave"

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

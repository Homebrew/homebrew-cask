cask "orion" do
  on_mojave :or_older do
    version "0.99,135"
    sha256 "56dfb5d128cfd105a073813389f120383bd0168908c08ffa9376f0788a0c42cb"

    url "https://cdn.kagi.com/updates/10_14/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/10_14/appcast.xml"
      strategy :sparkle
    end
  end
  on_catalina do
    version "0.99,135"
    sha256 "f459d0c2229e3a2f8af4699576941b472882fad958029d1c45c27317bae9fa8a"

    url "https://cdn.kagi.com/updates/10_15/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/10_15/appcast.xml"
      strategy :sparkle
    end
  end
  on_big_sur do
    version "0.99,135.0.1"
    sha256 "7a38688fb13770da76b4f9345c3747b1b8db147909d350d0985e44c96ace1f90"

    url "https://cdn.kagi.com/updates/11_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/11_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_monterey do
    version "0.99,135.0.1"
    sha256 "0a10adb8524b0132307512ea95a9c66909c50f1ca35016a206963a05dc007299"

    url "https://cdn.kagi.com/updates/12_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/12_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_ventura do
    version "0.99,135.0.1"
    sha256 "a557ee2a1f92801d0f4de4ea905e15adc03fc626826c8ea15d5f6da3f170e4c6"

    url "https://cdn.kagi.com/updates/13_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/13_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_sonoma do
    version "0.99,135.0.1"
    sha256 "c238c123a3541935369964479c8b5ee83f1105105550d73d2300b105eac41c65"

    url "https://cdn.kagi.com/updates/14_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/14_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_sequoia do
    version "0.99,135.0.1"
    sha256 "b603930100f8351e1dad4a4ab2aa34fafaa7c0ade28aae3c8188e153548abbf6"

    url "https://cdn.kagi.com/updates/15_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/15_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_tahoe :or_newer do
    version "0.99,134"
    sha256 "91f0261e8b662da378b1c8fb3fd42529afe64af9b049f5c32c9c5bc7baa23428"

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

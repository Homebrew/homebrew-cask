cask "orion" do
  on_catalina :or_older do
    version "1.1.2,150"
    sha256 "06733361478c924740660b22004803062c6a13074e296f3508da84fdc646dcfc"

    url "https://cdn.kagi.com/updates/10_15/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/10_15/appcast.xml"
      strategy :sparkle
    end
  end
  on_big_sur do
    version "1.1.2,150"
    sha256 "f9d7f4fa1453a2dfa0574b6bacbb59c4352869759f84a8f0e401571b190f048d"

    url "https://cdn.kagi.com/updates/11_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/11_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_monterey do
    version "1.1.2,150"
    sha256 "500946496fbc4440c658c114ce7357a0c905c8e524e3687b5bbda780d291bb2d"

    url "https://cdn.kagi.com/updates/12_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/12_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_ventura do
    version "1.1.2,150"
    sha256 "db5a68c40543e525d4b5e9ab2b771a4bec67d758bc661740df2daf6a7a42df13"

    url "https://cdn.kagi.com/updates/13_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/13_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_sonoma do
    version "1.1.2,150"
    sha256 "1475adcbd66661867eaae73b5dda1281b0405143eb4f122138a30e149f8a75b1"

    url "https://cdn.kagi.com/updates/14_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/14_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_sequoia do
    version "1.1.2,150"
    sha256 "d0f07ebe5c8cf4bec4f9058e53bfa20a4abdc7d720ad32fe11ca20e7d4d1e4bb"

    url "https://cdn.kagi.com/updates/15_0/#{version.csv.second}.zip"

    livecheck do
      url "https://cdn.kagi.com/updates/15_0/appcast.xml"
      strategy :sparkle
    end
  end
  on_tahoe :or_newer do
    version "1.1.2,150"
    sha256 "dfffd8e752996bde36832a85ad372cde7ef3d25332fd427ff6af0dd0441f4026"

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

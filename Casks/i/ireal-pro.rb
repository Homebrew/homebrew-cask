cask "ireal-pro" do
  on_catalina :or_older do
    version "2023.11.2"
    sha256 "6801ab4d288a83a75859af8fe9aca135de2d0175001f3c2492cebda9fd78f855"

    url "https://ireal-pro.s3.amazonaws.com/iReal+Pro+#{version}.dmg",
        verified: "ireal-pro.s3.amazonaws.com/"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: ">= :high_sierra"
  end
  on_big_sur :or_newer do
    version "2024.2,20240213"
    sha256 "80e400fe6127e5eabfc0383e5daaa8317deb2a4c704ff215624aef3a017159b6"

    url "https://ireal-pro.s3.amazonaws.com/iRealPro#{version.csv.second}.zip",
        verified: "ireal-pro.s3.amazonaws.com/"

    livecheck do
      url "https://ireal-pro.s3.amazonaws.com/appcast.xml"
      strategy :sparkle
    end

    depends_on macos: ">= :big_sur"
  end

  name "iReal Pro"
  desc "Music book & backing tracks"
  homepage "https://irealpro.com/"

  auto_updates true

  app "iReal Pro.app"

  zap trash: [
    "~/Library/Application Scripts/com.massimobiolcati.irealbookmac",
    "~/Library/Containers/com.massimobiolcati.irealbookmac",
    "~/Library/Containers/iReal Pro",
  ]
end

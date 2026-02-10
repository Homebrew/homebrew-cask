cask "ireal-pro" do
  on_catalina :or_older do
    version "2023.11.2"
    sha256 "6801ab4d288a83a75859af8fe9aca135de2d0175001f3c2492cebda9fd78f855"

    url "https://ireal-pro.s3.amazonaws.com/iReal+Pro+#{version}.dmg",
        verified: "ireal-pro.s3.amazonaws.com/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur do
    version "2024.7,20240707"
    sha256 "19dd261ce559a8c8e1efd49dbc63b55248e7dca75f2b8bf2940ecec08c94ab49"

    url "https://ireal-pro.s3.amazonaws.com/iRealPro#{version.csv.second}.zip",
        verified: "ireal-pro.s3.amazonaws.com/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "2026.1.3,20260131"
    sha256 "957a7259d4e6e256bfc41ec002a59f588c1d8bc3ddf47894abd3b8595bfd5641"

    url "https://ireal-pro.s3.amazonaws.com/iReal%20Pro-#{version.csv.first}-#{version.csv.second}.dmg",
        verified: "ireal-pro.s3.amazonaws.com/"

    livecheck do
      url "https://ireal-pro.s3.amazonaws.com/appcast.xml"
      strategy :sparkle
    end
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

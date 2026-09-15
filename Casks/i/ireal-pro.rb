cask "ireal-pro" do
  on_big_sur :or_older do
    version "2024.7,20240707"
    sha256 "19dd261ce559a8c8e1efd49dbc63b55248e7dca75f2b8bf2940ecec08c94ab49"

    url "https://ireal-pro.s3.amazonaws.com/iRealPro#{version.csv.second}.zip"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "2026.6.3,20260631"
    sha256 "08143479bbc73c30a2da9c8df263115d43b480289eb7969c38e8dbbade0df38f"

    url "https://ireal-pro.s3.amazonaws.com/iReal%20Pro-#{version.csv.first}-#{version.csv.second}.dmg"

    livecheck do
      url "https://ireal-pro.s3.amazonaws.com/appcast.xml"
      strategy :sparkle
    end
  end

  name "iReal Pro"
  desc "Music book & backing tracks"
  homepage "https://irealpro.com/"

  auto_updates true
  depends_on :macos

  app "iReal Pro.app"

  zap trash: [
    "~/Library/Application Scripts/com.massimobiolcati.irealbookmac",
    "~/Library/Containers/com.massimobiolcati.irealbookmac",
    "~/Library/Containers/iReal Pro",
  ]
end

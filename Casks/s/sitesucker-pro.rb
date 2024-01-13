cask "sitesucker-pro" do
  on_mojave :or_older do
    version "3.2.7"
    sha256 "dd61a113ad86b580e0faf97b4aa86290e038bb3e098f2d19e67fc9e194ce1a3e"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina :or_newer do
    version "5.3"
    sha256 "f2f8ac5667347f2eac851c4d6feab42063bc49ee86e46742e40ea62faa443e20"

    livecheck do
      url "https://ricks-apps.com/osx/sitesucker/history.html"
      regex(/Version\s*(\d+(?:\.\d+)+)/i)
    end
  end

  url "https://ricks-apps.com/osx/sitesucker/archive/#{version.major}.x/#{version.major_minor}.x/#{version}/SiteSucker_Pro_#{version}.dmg"
  name "SiteSucker Pro"
  desc "Website downloader tool"
  homepage "https://ricks-apps.com/osx/sitesucker/index.html"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "SiteSucker Pro.app"

  zap trash: [
    "~/Library/Application Scripts/us.sitesucker.mac.sitesucker-pro",
    "~/Library/Containers/us.sitesucker.mac.sitesucker-pro",
  ]
end

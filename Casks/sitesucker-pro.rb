cask "sitesucker-pro" do
  on_mojave :or_older do
    version "3.2.7"
    sha256 "dd61a113ad86b580e0faf97b4aa86290e038bb3e098f2d19e67fc9e194ce1a3e"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina :or_newer do
    version "5.1.7"
    sha256 "dc4ea3c3ac142a58d125492726b8af0a21b3bfc6fc63e1cab9ea5e1deebe7034"

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

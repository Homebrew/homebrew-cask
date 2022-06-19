cask "sitesucker-pro" do
  if MacOS.version <= :mojave
    version "3.2.7"
    sha256 "dd61a113ad86b580e0faf97b4aa86290e038bb3e098f2d19e67fc9e194ce1a3e"
  else
    version "5.0"
    sha256 "10216d9f32baa351653c1413df1f4f57054164a10dd6ef7f145f8756002ff4e9"
  end

  url "https://ricks-apps.com/osx/sitesucker/archive/#{version.major}.x/#{version.major_minor}.x/#{version}/SiteSucker_Pro_#{version}.dmg"
  name "SiteSucker Pro"
  desc "Website downloader tool"
  homepage "https://ricks-apps.com/osx/sitesucker/index.html"

  livecheck do
    url "https://ricks-apps.com/osx/sitesucker/history.html"
    regex(/Version\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "SiteSucker Pro.app"

  zap trash: [
    "~/Library/Application Scripts/us.sitesucker.mac.sitesucker-pro",
    "~/Library/Containers/us.sitesucker.mac.sitesucker-pro",
  ]
end

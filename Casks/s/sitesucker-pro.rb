cask "sitesucker-pro" do
  on_catalina :or_older do
    version "3.2.7"
    sha256 "dd61a113ad86b580e0faf97b4aa86290e038bb3e098f2d19e67fc9e194ce1a3e"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur do
    version "5.2"
    sha256 "244fa73a0aa73b3786ee6eb4e5d6f6438942853d6d58c5de38b92f11e8d44428"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "5.3.5"
    sha256 "189f4e60238dbc81d87abd278bc286952aed83cc6b6d94906a5470decd90e94e"

    livecheck do
      url "https://ricks-apps.com/osx/sitesucker/pro-versions.plist"
      strategy :xml do |xml|
        xml.elements["//dict/key[text()='App Version']"]&.next_element&.text&.strip
      end
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

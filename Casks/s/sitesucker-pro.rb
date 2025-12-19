cask "sitesucker-pro" do
  on_sequoia :or_older do
    on_catalina :or_older do
      version "3.2.7"
      sha256 "dd61a113ad86b580e0faf97b4aa86290e038bb3e098f2d19e67fc9e194ce1a3e"
    end
    on_big_sur do
      version "5.2"
      sha256 "244fa73a0aa73b3786ee6eb4e5d6f6438942853d6d58c5de38b92f11e8d44428"
    end
    on_monterey :or_newer do
      version "5.7.5"
      sha256 "39c842ba52f830ab19c0640159d4f2afbf852f3591d912a04fdccf5d0307b026"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_tahoe :or_newer do
    version "6.1"
    sha256 "2c65131c8015a6f4641c7738b25bbd1ec0e070b6169918915444aafa69b17c7e"

    livecheck do
      url "https://ricks-apps.com/osx/sitesucker/pro-versions.plist"
      strategy :xml do |xml|
        version = xml.elements["//dict/key[text()='App Version']"]&.next_element&.text
        next if version.blank?

        version.strip
      end
    end
  end

  url "https://ricks-apps.com/osx/sitesucker/archive/#{version.major}.x/#{version.major_minor}.x/#{version}/SiteSucker_Pro_#{version}.dmg"
  name "SiteSucker Pro"
  desc "Website downloader tool"
  homepage "https://ricks-apps.com/osx/sitesucker/index.html"

  auto_updates true

  app "SiteSucker Pro.app"

  zap trash: [
    "~/Library/Application Scripts/us.sitesucker.mac.sitesucker-pro",
    "~/Library/Containers/us.sitesucker.mac.sitesucker-pro",
  ]
end

cask "gifox" do
  version "2.3.1,020301.01"
  sha256 "5384be2c624ec9b3dc897df9b09b1209d089a0e789ff577336a495af3adbdcb4"

  url "https://d3si16icyi9iar.cloudfront.net/gifox/#{version.csv.second}.dmg",
      verified: "d3si16icyi9iar.cloudfront.net/gifox/"
  name "gifox"
  desc "App to record the screen"
  homepage "https://gifox.io/"

  livecheck do
    url "https://gifox.io/download/latest"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/(\d(\d)\d(\d)\d(\d).\d\d)\.dmg}i)
      next if match.blank?

      "#{match[2]}.#{match[3]}.#{match[4]},#{match[1]}"
    end
  end

  app "Gifox.app"

  uninstall launchctl: "com.gifox.gifox#{version.major}.agent",
            quit:      "com.gifox.gifox#{version.major}"

  zap trash: [
    "~/Library/Application Support/Gifox #{version.major}",
    "~/Library/Caches/com.gifox.gifox#{version.major}",
    "~/Library/Cookies/com.gifox.gifox#{version.major}.binarycookies",
    "~/Library/Preferences/com.gifox.gifox#{version.major}.plist",
  ]
end

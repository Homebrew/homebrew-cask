cask "gifox" do
  version "2.4.1,020401.00"
  sha256 "009fd2bb143d5fa4bc889ad44362652d91408e802c9520893a0341b97616654c"

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

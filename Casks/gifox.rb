cask "gifox" do
  version "2.5.0,020500.00"
  sha256 "ff7bc7539e26a7115111e0c7375b6b072a12bd2e352cd1e7c662d7491ef7996a"

  url "https://d1fqctmfkpkkcg.cloudfront.net/gifox/#{version.csv.second}.dmg",
      verified: "d1fqctmfkpkkcg.cloudfront.net/gifox/"
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

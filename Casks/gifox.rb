cask "gifox" do
  version "2.6.0,020600.00"
  sha256 "043943cb1df82bf5dc13895e44fc5a1c187e9a78e4da0cb3819485a11d914cc1"

  url "https://d1fqctmfkpkkcg.cloudfront.net/gifox/#{version.csv.second}.dmg",
      verified: "d1fqctmfkpkkcg.cloudfront.net/gifox/"
  name "gifox"
  desc "GIF recording and sharing"
  homepage "https://gifox.io/"

  livecheck do
    url "https://gifox.io/download/latest"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/(\d(\d)\d(\d)\d(\d).\d\d)\.dmg}i)
      next if match.blank?

      "#{match[2]}.#{match[3]}.#{match[4]},#{match[1]}"
    end
  end

  depends_on macos: ">= :high_sierra"

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

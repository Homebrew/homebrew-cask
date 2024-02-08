cask "gifox" do
  version "2.6.3,020603.02"
  sha256 "33077095a6947cad7124f4544a46c26769fef70373ecd9d75d2deedd8c23f5e3"

  url "https://d1fqctmfkpkkcg.cloudfront.net/gifox/#{version.csv.second}.dmg",
      verified: "d1fqctmfkpkkcg.cloudfront.net/gifox/"
  name "gifox"
  desc "GIF recording and sharing"
  homepage "https://gifox.io/"

  livecheck do
    url "https://gifox.io/download/latest"
    regex(%r{/(\d(\d)\d(\d)\d(\d).\d\d)\.dmg}i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map do |match|
        "#{match[1]}.#{match[2]}.#{match[3]},#{match[0]}"
      end
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

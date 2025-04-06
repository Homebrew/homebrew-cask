cask "spybuster" do
  version "3.0.1,202,1711714226"
  sha256 "fdbb1d0df481524348e35d0f9e349f5bb7ab72aa415b12c7e99ce0e831fa8098"

  url "https://dl.devmate.com/com.macpaw-labs.snitch/#{version.csv.second}/#{version.csv.third}/SpyBuster-#{version.csv.second}.zip",
      verified: "dl.devmate.com/com.macpaw-labs.snitch/"
  name "SpyBuster"
  desc "Anti-spyware tool"
  homepage "https://spybuster.app/"

  livecheck do
    url "https://updateinfo.devmate.com/com.macpaw-labs.snitch/test/beta/updates.xml"
    regex(%r{/(\d+)/SpyBuster\d*?[_-]v?(\d+(?:\.\d+)*)\.(?:dmg|zip)}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "SpyBuster.app"

  zap trash: "~/Library/Application Support/SpyBuster"
end

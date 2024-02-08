cask "spybuster" do
  version "2.9.8"
  sha256 :no_check

  url "https://dl.devmate.com/com.macpaw-labs.snitch/SpyBuster.zip",
      verified: "dl.devmate.com/com.macpaw-labs.snitch/"
  name "SpyBuster"
  desc "Anti-spyware tool"
  homepage "https://spybuster.app/"

  livecheck do
    url "https://updates.devmate.com/com.macpaw-labs.snitch.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :catalina"

  app "SpyBuster.app"

  zap trash: "~/Library/Application Support/SpyBuster"
end

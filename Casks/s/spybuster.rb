cask "spybuster" do
  version "3.0.1"
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

  depends_on macos: ">= :big_sur"

  app "SpyBuster.app"

  zap trash: "~/Library/Application Support/SpyBuster"
end

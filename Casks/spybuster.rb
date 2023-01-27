cask "spybuster" do
  version "2.9.53,160"
  sha256 :no_check

  url "https://dl.devmate.com/com.macpaw-labs.snitch/160/1658826378/SpyBuster-160.zip",
      verified: "devmate.com/"
  name "SpyBuster"
  desc "Anti-spyware tool"
  homepage "https://spybuster.app/"

  livecheck do
    url "https://updates.devmate.com/com.macpaw-labs.snitch.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

  app "SpyBuster.app"

  zap trash: "~/Library/Application Support/SpyBuster"
end

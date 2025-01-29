cask "leader-key" do
  version "1.6.0"
  sha256 :no_check

  url "https://leader-key-updates.s3.amazonaws.com/Leader%20Key-latest.zip",
      verified: "leader-key-updates.s3.amazonaws.com/"
  name "Leader Key"
  desc "*faster than your launcher* launcher"
  homepage "https://github.com/mikker/LeaderKey.app"

  livecheck do
    url "https://leader-key-updates.s3.amazonaws.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :ventura"

  app "Leader Key.app"

  zap trash: "~/Library/Application Support/Leader Key"
end

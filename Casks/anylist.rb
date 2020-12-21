cask "anylist" do
  version "1.1,2"
  sha256 "3b319c94865c0b643b1eeb88611ef0d632301a6ec807e070571b8bfbce9c5974"

  url "https://s3.amazonaws.com/files.anylistapp.com/mac/AnyList_v#{version.before_comma.dots_to_underscores}.zip",
      verified: "s3.amazonaws.com/files.anylistapp.com/"
  name "AnyList"
  homepage "https://www.anylistapp.com/"

  livecheck do
    url "https://s3.amazonaws.com/files.anylistapp.com/mac/appcast.xml"
    strategy :sparkle
  end

  app "AnyList.app"
end

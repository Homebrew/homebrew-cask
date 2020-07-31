cask "anylist" do
  version "1.1"
  sha256 "3b319c94865c0b643b1eeb88611ef0d632301a6ec807e070571b8bfbce9c5974"

  # s3.amazonaws.com/files.anylistapp.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/files.anylistapp.com/mac/AnyList_v#{version.dots_to_underscores}.zip"
  appcast "https://s3.amazonaws.com/files.anylistapp.com/mac/appcast.xml"
  name "AnyList"
  homepage "https://www.anylistapp.com/"

  app "AnyList.app"
end

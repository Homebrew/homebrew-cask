cask "deskpad" do
  version "1.3.1"
  sha256 "5b78207c71a2bd4f1bb21e42175e09b9acf25631c23689c7609eb3767e3f0a25"

  url "https://github.com/Stengo/DeskPad/releases/download/v#{version}/DeskPad.app.zip"
  name "DeskPad"
  desc "Virtual monitor for screen sharing"
  homepage "https://github.com/Stengo/DeskPad"

  depends_on macos: ">= :ventura"

  app "DeskPad.app"

  zap trash: [
    "~/Library/Application Scripts/com.stengo.DeskPad",
    "~/Library/Containers/com.stengo.DeskPad",
  ]
end

cask "deskpad" do
  version "1.2"
  sha256 "7ec3dee848da291c9f33b1f471dbc7f1fd77c72d34edee9d3496b9b7177d82c6"

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

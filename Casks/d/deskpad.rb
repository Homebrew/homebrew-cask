cask "deskpad" do
  version "1.3.2"
  sha256 "b7aae212364193177a6feb2fed6a7942ae9a705d6d491c15e479c58585b85ae0"

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

cask "pairpods" do
  version "0.7.0"
  sha256 "08c900877a33c2f3c54398001e129933a98d3e931d102929a97efc6c995bc1b0"

  url "https://github.com/wozniakpawel/PairPods/releases/download/v#{version}/PairPods-#{version}.app.zip",
      verified: "github.com/wozniakpawel/PairPods/"
  name "PairPods"
  desc "Share audio between two Bluetooth devices"
  homepage "https://pairpods.app/"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "PairPods.app"

  zap trash: [
    "~/Library/Application Scripts/com.wozniakpawel.PairPods",
    "~/Library/Containers/com.wozniakpawel.PairPods",
  ]
end

cask "pairpods" do
  version "0.1.0"
  sha256 "0e9fdc89b1fc9fd57e646fd4f3efcdd4c8f15274b8df672e2b9a20adc20b7c1f"

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

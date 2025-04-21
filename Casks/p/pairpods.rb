cask "pairpods" do
  version "0.2.1"
  sha256 "a15c8f25c9be832d51de5df85d379d0e313ddf712d999055f7d3ebd499b9ae2f"

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

cask "amitv87-pip" do
  version "2.41"
  sha256 "5d85c8e084980eccfe16a0d7941d4d869003c1e2744f16ba7efab66d9c480356"

  url "https://github.com/amitv87/PiP/releases/download/v#{version}/PiP-#{version}.dmg"
  name "PiP"
  desc "Always on top window preview"
  homepage "https://github.com/amitv87/PiP"

  depends_on macos: ">= :sierra"

  app "PiP.app"

  zap trash: "~/Library/Saved Application State/com.boggyb.PiP.savedState"
end

cask "amitv87-pip" do
  version "2.70"
  sha256 "09c58ca3c51b4b447752a8a152b97cc1294d37238bca04d6411ed18fcbfeeff4"

  url "https://github.com/amitv87/PiP/releases/download/v#{version}/PiP-#{version}.dmg"
  name "PiP"
  desc "Always on top window preview"
  homepage "https://github.com/amitv87/PiP"

  depends_on macos: ">= :sierra"

  app "PiP.app"

  zap trash: "~/Library/Saved Application State/com.boggyb.PiP.savedState"
end

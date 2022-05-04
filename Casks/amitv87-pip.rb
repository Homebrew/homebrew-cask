cask "amitv87-pip" do
  version "2.10"
  sha256 "e1f4ee01d63b3d2df06e884d9762f46780e2b6d487b9fcc4e9c469f6d7950339"

  url "https://github.com/amitv87/PiP/releases/download/v#{version}/PiP-#{version}.dmg"
  name "PiP"
  desc "Always on top window preview"
  homepage "https://github.com/amitv87/PiP"

  depends_on macos: ">= :sierra"

  app "PiP.app"
end

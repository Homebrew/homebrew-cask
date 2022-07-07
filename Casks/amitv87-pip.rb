cask "amitv87-pip" do
  version "2.40"
  sha256 "57fd87c68e9cd4e0a1a425234abad231ec7c9bdb3e4d7c35a18e5341a4b9b025"

  url "https://github.com/amitv87/PiP/releases/download/v#{version}/PiP-#{version}.dmg"
  name "PiP"
  desc "Always on top window preview"
  homepage "https://github.com/amitv87/PiP"

  depends_on macos: ">= :sierra"

  app "PiP.app"
end

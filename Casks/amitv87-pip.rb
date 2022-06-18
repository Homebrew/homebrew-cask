cask "amitv87-pip" do
  version "2.20"
  sha256 "08992f6d13d2ffbb4e8b3032af295f7948347603aa0eda7f5e096f8a0917c757"

  url "https://github.com/amitv87/PiP/releases/download/v#{version}/PiP-#{version}.dmg"
  name "PiP"
  desc "Always on top window preview"
  homepage "https://github.com/amitv87/PiP"

  depends_on macos: ">= :sierra"

  app "PiP.app"
end

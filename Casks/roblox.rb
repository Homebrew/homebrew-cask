cask "roblox" do
  version :latest
  sha256 :no_check

  url "https://setup.rbxcdn.com/mac/version-a6764d89ac4d4286-Roblox.dmg",
      verified: "setup.rbxcdn.com"
  name "roblox"
  desc "Create and share experiences with each other in immersive 3D worlds"
  homepage "https://www.roblox.com/"

  app "Roblox.app"
end

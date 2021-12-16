cask "roblox-studio" do
  version :latest
  sha256 :no_check

  url "https://setup.rbxcdn.com/mac/RobloxStudio.dmg",
      verified: "setup.rbxcdn.com"
  name "roblox-studio"
  desc "Building tool for Roblox"
  homepage "https://www.roblox.com/create"

  app "RobloxStudio.app"
end

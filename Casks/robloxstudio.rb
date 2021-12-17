cask "robloxstudio" do
  version :latest
  sha256 :no_check

  url "https://setup.rbxcdn.com/mac/RobloxStudio.dmg",
      verified: "setup.rbxcdn.com"
  name "RobloxStudio"
  desc "Building tool for Roblox"
  homepage "https://www.roblox.com/create"
  
  livecheck do
    url :url
    strategy :extract_plist
  end

  app "RobloxStudio.app"
end

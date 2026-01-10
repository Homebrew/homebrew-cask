cask "cardinal-search" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.19"
  sha256 arm:   "4bbc550a09be6b39a5aa68431431974259f04b27fab8b41f5a8ad0a421aad061",
         intel: "d661ca5f4e40bb1517e10e539914763b5539b1e34d8078c33ebda5b6b5d26358"

  url "https://github.com/cardisoft/cardinal/releases/download/v#{version}/Cardinal_#{version}_#{arch}.dmg"
  name "Cardinal Search"
  desc "Fastest file searching tool"
  homepage "https://github.com/cardisoft/Cardinal"

  depends_on macos: ">= :monterey"

  app "Cardinal.app"

  zap trash: [
    "~/Library/Application Support/com.cardinal.one",
    "~/Library/Caches/com.cardinal.one",
    "~/Library/Preferences/com.cardinal.one.plist",
    "~/Library/Webkit/com.cardinal.one",
  ]
end

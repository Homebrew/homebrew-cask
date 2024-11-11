cask "devtoys" do
  arch arm: "arm64", intel: "x64"

  version "2.0.7.0"
  sha256 arm:   "fe8a8e5d378495a5ec3368f5634e6b03db60f2e33d1d97c78b16139f70c31932",
         intel: "8c67eac087b3d0ac220c2182a772630027baa1ad847d26a2c65b137b251a1dde"

  url "https://github.com/DevToys-app/DevToys/releases/download/v#{version}/devtoys_osx_#{arch}.zip"
  name "DevToys"
  desc "Utilities designed to make common development tasks easier"
  homepage "https://github.com/DevToys-app/DevToys"

  depends_on macos: ">= :monterey"

  app "DevToys.app"

  zap trash: [
    "~/Library/Caches/com.devtoys",
    "~/Library/Caches/com.devtoys.preview",
    "~/Library/Preferences/com.devtoys.plist",
    "~/Library/Preferences/com.yuki.DevToys.plist",
    "~/Library/WebKit/com.devtoys",
    "~/Library/WebKit/com.devtoys.app",
  ]
end

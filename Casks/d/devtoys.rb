cask "devtoys" do
  arch arm: "arm64", intel: "x64"

  version "2.0.8.0"
  sha256 arm:   "98d2c97c9a06496657e7ffb67273f8fb44d446a3c000d22de4b6a94d9b3debc7",
         intel: "16408e9b10db408dc529882570e982cc08a212f89ef592d61c591ba30b4da977"

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

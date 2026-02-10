cask "devtoys" do
  arch arm: "arm64", intel: "x64"

  version "2.0.9.0"
  sha256 arm:   "49d1910e24cecd1709086e47fcf0ece09080f1b93056a3bd2c874de0a0b77a82",
         intel: "889fd564f139ff0dbd3219fcb8d742cddd8eac0132a7e66cede40e0e3d611b6c"

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

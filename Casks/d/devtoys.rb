cask "devtoys" do
  arch arm: "arm64", intel: "x64"

  version "2.0.5.0"
  sha256 arm:   "34742eb7e10652044599ca08ccef174cf84e804513fd9ae2522c1229b9e36cf3",
         intel: "9f9e31d64330349538a61a635ccae758c7ad850a94de12f40df24ab7acb522ab"

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

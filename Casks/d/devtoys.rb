cask "devtoys" do
  arch arm: "arm64", intel: "x64"
  version "2.0.1.0"
  sha256 arm:   "15b81d500ec20f608abf837acdc52c1fd6d22163de789c72683e5fc166808ec5",
         intel: "f397473471b1b9cae40ae005912c096bd4cda8572325bd0d515a07fbf6a6b1a6"

  url "https://github.com/DevToys-app/DevToys/releases/download/v#{version}/devtoys_osx_#{arch}.zip"
  name "DevToys"
  desc "Utilities designed to make common development tasks easier"
  homepage "https://github.com/DevToys-app/DevToys"

  depends_on macos: ">= :catalina"

  app "DevToys.app"

  zap trash: [
    "~/Library/com.devtoys.preview",
    "~/Library/Preferences/com.devtoys.plist",
    "~/Library/Preferences/com.yuki.DevToys.plist",
    "~/Library/Caches/com.devtoys.preview",
    "~/Library/WebKit/come.devtoys.app",
   ]
end

cask "iris" do
  version "1.2.0"
  sha256 "dec14c8768aab69c343ec173e4b7cca2c9966d6b5425a1fb3a198b3704a21359"

  # raw.githubusercontent.com/danielng01/product-builds/ was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/danielng01/product-builds/master/iris/macos/Iris-#{version}-OSX.zip"
  appcast "https://iristech.co/iris/"
  name "Iris"
  desc "Blue light filter and eye protection software"
  homepage "https://iristech.co/iris/"

  app "Iris.app"

  uninstall launchctl: "co.iristech.Iris",
            quit:      "co.iristech.Iris"

  zap trash: [
    "~/Library/Preferences/com.iristech.Iris.plist",
    "~/Library/Saved Application State/co.iristech.Iris.savedState",
  ]
end

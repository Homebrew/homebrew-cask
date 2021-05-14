cask "iris" do
  version "1.2.0"
  sha256 "dec14c8768aab69c343ec173e4b7cca2c9966d6b5425a1fb3a198b3704a21359"

  url "https://raw.githubusercontent.com/danielng01/product-builds/master/iris/macos/Iris-#{version}-OSX.zip",
      verified: "raw.githubusercontent.com/danielng01/product-builds/"
  name "Iris"
  desc "Blue light filter and eye protection software"
  homepage "https://iristech.co/iris/"

  livecheck do
    url :homepage
    regex(/Iris[._-]?v?(\d+(?:\.\d+)+)[._-]?OSX\.zip/i)
  end

  app "Iris.app"

  uninstall launchctl: "co.iristech.Iris",
            quit:      "co.iristech.Iris"

  zap trash: [
    "~/Library/Preferences/com.iristech.Iris.plist",
    "~/Library/Saved Application State/co.iristech.Iris.savedState",
  ]
end

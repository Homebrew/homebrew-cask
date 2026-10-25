cask "earthbackground" do
  arch arm: "arm64", intel: "x64"

  version "2.6.0"
  sha256 arm: "dfad51f042ba238e46bb5ea7b4055394dc55d0300b22917b3a6be13b9f6dead2",
         intel: "9d2ce43ec87797aa2073c99cf86995fde9b507dc18959b27ca6ddcf458bbca65"

  url "https://github.com/LGinC/EarthBackground/releases/download/v2.6.0/EarthBackground-#{version}-osx-#{arch}-brew.zip"
  name "EarthBackground"
  desc "Satellite earth wallpaper application built with .NET and Avalonia"
  homepage "https://github.com/LGinC/EarthBackground"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "EarthBackground.app"

  zap trash: [
    "~/Library/Preferences/io.github.lginc.earthbackground.plist",
    "~/Library/Saved Application State/io.github.lginc.earthbackground.savedState",
  ]
end

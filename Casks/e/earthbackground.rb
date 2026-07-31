cask "earthbackground" do
  arch arm: "arm64", intel: "x64"

  version "2.5.8"
  sha256 arm: "f10e827011fab207e7d3315b3d6b4d3eb581f5e5ad717563c4e3638b887d7cb1",
         intel: "a5c694cb484c6113a140683af88918db48a7b56a21c00213ad68870e56a87800"

  url "https://github.com/LGinC/EarthBackground/releases/download/v2.5.8/EarthBackground-#{version}-osx-#{arch}-brew.zip"
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

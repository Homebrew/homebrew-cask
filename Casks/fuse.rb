cask "fuse" do
  version "1.9.0"
  sha256 "31e737086d546176f436a2792baca604487f529008a21c424610baec25146a20"

  url "https://github.com/fuse-open/fuse-studio/releases/download/#{version}/fuse_osx_#{version.dots_to_underscores}.pkg",
      verified: "github.com/fuse-open/fuse-studio/"
  name "Fuse Studio"
  name "Fuse Open"
  name "Fuse Fusetools"
  desc "Visual desktop tool suite for working with the Fuse framework"
  homepage "https://fuse-open.github.io/"

  pkg "fuse_osx_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.fusetools.fuse"

  zap trash: [
    "~/Library/Preferences/com.fusetools.Fuse.Tray.plist",
    "~/Library/Preferences/com.fusetools.FuseStudio.plist",
    "~/Library/Saved Application State/com.fusetools.FuseStudio.savedState",
  ]
end

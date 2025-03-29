cask "naps2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "8.1.2"
  sha256 arm:   "31acb3720861006281ae14c64f29d61bc6fdf0c3c83e5235ef52ce16d4d66ba0",
         intel: "23c33392cc91ea6657ae1a75095b4a98aeaec815bb18015a00dff2e3e4b7ace1"

  url "https://github.com/cyanfish/naps2/releases/download/v#{version}/naps2-#{version}-mac-#{arch}.pkg",
      verified: "github.com/cyanfish/naps2/"
  name "NAPS2"
  desc "Document scanning application"
  homepage "https://www.naps2.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  pkg "naps2-#{version}-mac-#{arch}.pkg"

  uninstall pkgutil: "com.naps2.desktop"

  zap trash: [
    "~/.config/NAPS2",
    "~/Library/Preferences/com.naps2.desktop.plist",
    "~/Library/Saved Application State/com.naps2.desktop.savedState",
  ]
end

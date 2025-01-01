cask "naps2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "7.5.3"
  sha256 arm:   "2cc994c218f80efd5ef78a64f461858aca9afa42012e6f330477eafbf6576b14",
         intel: "87471e187c51edbdbaad60647ed779a76a0bac1eba655eab8e58e1e99539f556"

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

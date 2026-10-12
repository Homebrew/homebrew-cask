cask "naps2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "8.5.1"
  sha256 arm:   "0d7a9d59bda8ce6b0103f001b70a1ba85f63200e33f31ddcb76eae13388d5d1c",
         intel: "2f7ffd63bb43bb7c5557a177a48e5f47a459837dacfe599b4de2a22fc91be0ba"

  url "https://github.com/cyanfish/naps2/releases/download/v#{version}/naps2-#{version}-mac-#{arch}.pkg"
  name "NAPS2"
  desc "Document scanning application"
  homepage "https://www.naps2.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  pkg "naps2-#{version}-mac-#{arch}.pkg"

  uninstall pkgutil: "com.naps2.desktop"

  zap trash: [
    "~/.config/NAPS2",
    "~/Library/Preferences/com.naps2.desktop.plist",
    "~/Library/Saved Application State/com.naps2.desktop.savedState",
  ]
end

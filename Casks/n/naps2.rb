cask "naps2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "8.4.1"
  sha256 arm:   "b2bf9cd51c86cbef0a0f0777378a1d464710621c9bf12dfb228749174e3a1735",
         intel: "10a3b647deddec2ebf4b7c816808769b14e2afe5a77043609b7e71165a5f2b62"

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

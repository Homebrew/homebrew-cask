cask "naps2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "8.3.0"
  sha256 arm:   "c55d9ee14ff001d3f139c47b8bbdd4ac2809e366879344e4dd461a1bc691f536",
         intel: "a24901d36eda17b7b63cc74513db9e5bb478c5edd249f44c74ee840a869bf377"

  url "https://github.com/cyanfish/naps2/releases/download/v#{version}/naps2-#{version}-mac-#{arch}.pkg",
      verified: "github.com/cyanfish/naps2/"
  name "NAPS2"
  desc "Document scanning application"
  homepage "https://www.naps2.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "naps2-#{version}-mac-#{arch}.pkg"

  uninstall pkgutil: "com.naps2.desktop"

  zap trash: [
    "~/.config/NAPS2",
    "~/Library/Preferences/com.naps2.desktop.plist",
    "~/Library/Saved Application State/com.naps2.desktop.savedState",
  ]
end

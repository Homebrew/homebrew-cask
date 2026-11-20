cask "pdfsam-basic" do
  arch arm: "arm64", intel: "x64"

  version "6.0.11"
  sha256 arm:   "2c8516290cf0d3fcbaa3f55db9e40667811178c7f5f83c2869e6d594ceb036f0",
         intel: "0fc16b250f7b10e3b47263c2b61720c61306ba06d37bb71e90ec8287eb6f0bac"

  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}/pdfsam-basic-#{version}-macos-#{arch}.dmg"
  name "PDFsam Basic"
  desc "Extracts pages, splits, merges, mixes and rotates PDF files"
  homepage "https://pdfsam.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "PDFsam Basic.app"

  zap trash: [
    "~/Library/Preferences/org.pdfsam.modules.plist",
    "~/Library/Preferences/org.pdfsam.stage.plist",
    "~/Library/Preferences/org.pdfsam.user.plist",
    "~/Library/Saved Application State/org.pdfsam.basic.savedState",
  ]
end

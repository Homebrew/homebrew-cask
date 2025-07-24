cask "pdfsam-basic" do
  arch arm: "arm64", intel: "x64"

  version "5.3.2"
  sha256 arm:   "6887ead4da879be432b7521ce84f54d462010a06fa49b4c61d81a72d42efd22d",
         intel: "384564d8a14aa765011761dcf401ea83044bb9304c599dc8b62c67357e6f634f"

  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}/pdfsam-basic-#{version}-macos-#{arch}.dmg",
      verified: "github.com/torakiki/pdfsam/"
  name "PDFsam Basic"
  desc "Extracts pages, splits, merges, mixes and rotates PDF files"
  homepage "https://pdfsam.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PDFsam Basic.app"

  zap trash: [
    "~/Library/Preferences/org.pdfsam.modules.plist",
    "~/Library/Preferences/org.pdfsam.stage.plist",
    "~/Library/Preferences/org.pdfsam.user.plist",
    "~/Library/Saved Application State/org.pdfsam.basic.savedState",
  ]
end

cask "pdfsam-basic" do
  arch arm: "arm64", intel: "x64"

  version "5.4.0"
  sha256 arm:   "4d4dfef44012def424f79ae377bc0b5ad9fbd0378e0928a11e61f31d5dd18f85",
         intel: "2a999a8013b473ae64dfc20982142e4c2a243e66f001f78cbde224f8940ee338"

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

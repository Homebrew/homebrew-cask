cask "pdfsam-basic" do
  arch arm: "arm64", intel: "x64"

  version "6.0.3"
  sha256 arm:   "eb3551b848004ec30372a08a2bc5ce8448a9d5bf4727dfe15259078ba2f6f7f0",
         intel: "38efc44549b8d3974425ce81ff85f42f1e25c56ada55ba44e410cb14c20aa326"

  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}/pdfsam-basic-#{version}-macos-#{arch}.dmg",
      verified: "github.com/torakiki/pdfsam/"
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

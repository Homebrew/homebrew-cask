cask "pdfsam-basic" do
  arch arm: "arm64", intel: "x64"

  version "6.0.9"
  sha256 arm:   "ad6cefc591ac1573e9cde25388fc7204cfa747c544e2997e22706f7f0f90a377",
         intel: "a1e8fcec3b16af7402c205829e20ec5f071284f8e2a6172b9f0832482fdcca43"

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

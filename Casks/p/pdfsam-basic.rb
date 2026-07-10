cask "pdfsam-basic" do
  arch arm: "arm64", intel: "x64"

  version "6.0.4"
  sha256 arm:   "e42b053ccfc7172dc23bfb615eb9328d78585e61cbc43c16b6ca13734099046e",
         intel: "3b164d9b8325735c866e9829f9f95b5a3485ea6274a0fdc2a1ceae68dc2262fa"

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

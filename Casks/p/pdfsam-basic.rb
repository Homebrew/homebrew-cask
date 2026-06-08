cask "pdfsam-basic" do
  arch arm: "arm64", intel: "x64"

  version "6.0.1"
  sha256 arm:   "b05830681fdf81698acffb45f3f5d46dc5a7ee4c64d2afd39e8332eaecdf83e6",
         intel: "63caa798a03a0bdffcc785c51758e829656d9cb73a23ab5fceeb27dfb68f817c"

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

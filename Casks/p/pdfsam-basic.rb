cask "pdfsam-basic" do
  arch arm: "arm64", intel: "x64"

  version "6.0.6"
  sha256 arm:   "ee81b23c8452757b8dee711f5ec5cf7f3ea0fb958cc7306e824f9041a755c3bc",
         intel: "8da97b70e9109ccd44772d901df49e650e8811828bb60a08d3ecb8174cc6a338"

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

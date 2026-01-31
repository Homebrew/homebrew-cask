cask "pdfsam-basic" do
  arch arm: "arm64", intel: "x64"

  version "5.4.5"
  sha256 arm:   "12819b01aed15504efc53d7d5ccda8b6dcf04462b26dc09eaa19392e9c3b3ad3",
         intel: "4931afaac5a5e6c8b01733c50daec597c26139cd44bb858ffbe99c5f5c839eed"

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

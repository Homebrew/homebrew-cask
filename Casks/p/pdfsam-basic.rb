cask "pdfsam-basic" do
  arch arm: "arm64", intel: "x64"

  version "6.0.10"
  sha256 arm:   "8fec99e79f4650a6112bd756403ff6d875b46963b99c5bcb7b422c39310405a9",
         intel: "5c9a68009b0faab5dc79b031134529897d897cd48dbd69155a8f131f461328bc"

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

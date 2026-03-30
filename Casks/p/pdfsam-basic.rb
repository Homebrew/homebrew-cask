cask "pdfsam-basic" do
  arch arm: "arm64", intel: "x64"

  version "6.0.0"
  sha256 arm:   "704b567abb2f76d36c5ea6ccf8329bc63335cfd873581c61f171eca757276dae",
         intel: "bdd704ca47bb6c853ddda16f3f7a72052d30ee1020a65b9c9b366015d1e5b904"

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

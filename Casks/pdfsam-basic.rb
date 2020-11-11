cask "pdfsam-basic" do
  version "4.2.0"
  sha256 "970ab50c5de3e4dfce7a4e8dfa06709e5c7ab5d343991194173221c37e1c1dba"

  # github.com/torakiki/pdfsam/ was verified as official when first introduced to the cask
  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}/PDFsam-#{version}.dmg"
  appcast "https://github.com/torakiki/pdfsam/releases.atom"
  name "PDFsam Basic"
  desc "Extractas pages, splits, merges, mixes and rotates PDF files"
  homepage "https://pdfsam.org/"

  app "PDFsam Basic.app"

  zap trash: [
    "~/Library/Preferences/org.pdfsam.modules.plist",
    "~/Library/Preferences/org.pdfsam.stage.plist",
    "~/Library/Preferences/org.pdfsam.user.plist",
    "~/Library/Saved Application State/org.pdfsam.basic.savedState",
  ]
end

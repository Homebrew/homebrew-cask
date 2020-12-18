cask "pdfsam-basic" do
  version "4.2.1"
  sha256 "6536aee631a4de4cb4e8a9acad9ccd357b0b65fe904bbd2afee79bf83aad3410"

  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}/PDFsam-#{version}.dmg",
      verified: "github.com/torakiki/pdfsam/"
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

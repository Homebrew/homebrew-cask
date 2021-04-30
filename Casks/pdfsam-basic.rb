cask "pdfsam-basic" do
  version "4.2.4"
  sha256 "bfbc3bc8d48a4d9940519759b2756417f909d40084c2023795136ea4c1b99518"

  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}/PDFsam-#{version}.dmg",
      verified: "github.com/torakiki/pdfsam/"
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

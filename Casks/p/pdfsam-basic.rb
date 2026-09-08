cask "pdfsam-basic" do
  arch arm: "arm64", intel: "x64"

  version "6.0.5"
  sha256 arm:   "61a1644dbe71b063e8b302c430e4285daf29c8013bdd729e7c3592cf9d0a915a",
         intel: "b86520a95b980ffef0497e7147ab3500bc4e6f1dd7780a97c2b5973e71b534b9"

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

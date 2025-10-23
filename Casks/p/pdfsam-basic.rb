cask "pdfsam-basic" do
  arch arm: "arm64", intel: "x64"

  version "5.4.1"
  sha256 arm:   "728c728025413cb0d721b3f991f1997cf451e83d42a895931bed4eb0af024bb8",
         intel: "4869f6662c557cc9f7fdfcc9d9ca92c1d54eeb50c95e5f660ba8c76a09bcd392"

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

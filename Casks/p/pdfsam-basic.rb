cask "pdfsam-basic" do
  version "5.2.4"
  sha256 "b28956f39d8828ded5b087c76ce9cb30a252d73f3b2a5501ba331b45675fe668"

  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}/PDFsam-#{version}.dmg",
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

  caveats do
    requires_rosetta
  end
end

cask "onlyoffice" do
  arch arm: "arm", intel: "x86_64"

  version "8.3.0"
  sha256 arm:   "2f1e7c61e4f487f36c95984a21eb7cd8e843b33174777535be1036895c28deef",
         intel: "89aa40f3be9f17f83eb3fa90ebee2eae2ac004fa5473d2c4bc07a00401a87f5f"

  url "https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v#{version}/ONLYOFFICE-#{arch}.dmg",
      verified: "github.com/ONLYOFFICE/DesktopEditors/"
  name "ONLYOFFICE"
  desc "Document editor"
  homepage "https://www.onlyoffice.com/"

  livecheck do
    url :url
    regex(/(\d+(?:\.\d+)+)/i)
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "ONLYOFFICE.app"

  zap trash: [
    "~/Library/Application Support/asc.onlyoffice.ONLYOFFICE",
    "~/Library/Preferences/asc.onlyoffice.editors-helper-renderer.plist",
    "~/Library/Preferences/asc.onlyoffice.ONLYOFFICE.plist",
  ]
end

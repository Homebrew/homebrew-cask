cask "onlyoffice" do
  arch arm: "arm", intel: "x86_64"

  version "7.2.1"
  sha256 arm:   "9df33392d8dbcb194bfa1530feb3209521b1dd0724ac3bbd70ccb0bd9b28547b",
         intel: "76cb93699f88aac0c4fe3efc86dd0c779368a90d3dd1c278bb92c296eded4a9d"

  url "https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v#{version}/ONLYOFFICE-#{arch}.dmg",
      verified: "github.com/ONLYOFFICE/DesktopEditors/"
  name "ONLYOFFICE"
  desc "Document editor"
  homepage "https://www.onlyoffice.com/"

  livecheck do
    url :url
    regex(%r{href=["']?[^"' >]*?/tag/[^"' >]*?(\d+(?:\.\d+)+)["' >]}i)
    strategy :github_latest
  end

  auto_updates true

  app "ONLYOFFICE.app"
end

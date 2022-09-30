cask "onlyoffice" do
  arch arm: "arm", intel: "x86_64"

  version "7.2.0"
  sha256 arm:   "d5498533c25abae38c268eb63b89794532df0f3cbb5c0b6622ff26bd221ad18e",
         intel: "1f67e7fc110bda504a077b5f967d2a31f07f97187150cf7b1442195f56fe52a7"

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

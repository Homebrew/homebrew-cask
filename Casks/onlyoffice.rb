cask "onlyoffice" do
  arch arm: "arm", intel: "x86_64"

  version "7.3.0"
  sha256 arm:   "2ad0d6126b480a12e227183557510fd80ec175d3da2eb468d5b3abc3814aad5d",
         intel: "a5a3d5435c6ff0363f389488bb813c2d49e71a639c2a677d3069575f7ffc53f3"

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

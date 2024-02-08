cask "onlyoffice" do
  arch arm: "arm", intel: "x86_64"

  version "8.0.0"
  sha256 arm:   "1421036044168c1891cb8411f5d13fc0663a2cce95d95ae3525055ccc284da2e",
         intel: "759b4a7ead43a878ad78ff33afbcbd6b213d815641f3d6f5d9525273ab2bc72f"

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

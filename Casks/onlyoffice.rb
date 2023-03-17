cask "onlyoffice" do
  arch arm: "arm", intel: "x86_64"

  version "7.3.3"
  sha256 arm:   "163b2de9622c169a7df36ddc1214db17703b6669e560690498ce3134cc2adade",
         intel: "5dcbe6c26bcf81f14fb35460433b37eb912db7aa9d1e8fdab5f0aca30e05696c"

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

  zap trash: [
    "~/Library/Application Support/asc.onlyoffice.ONLYOFFICE",
    "~/Library/Preferences/asc.onlyoffice.ONLYOFFICE.plist",
    "~/Library/Preferences/asc.onlyoffice.editors-helper-renderer.plist",
  ]
end

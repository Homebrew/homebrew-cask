cask "blisk" do
  arch arm: "-m1"

  version "23.0.185.91"
  sha256 arm:   "d238117d497ee71926aa8523e56ed319b5ab679ea5b2e2652420a927e30ed0fa",
         intel: "48baae4ebce60c85b87dcbd16832d8578ec6b48db6d46059704249c770ccdefa"

  url "https://bliskcloudstorage.blob.core.windows.net/mac#{arch}-installers/BliskInstaller_#{version}.dmg",
      verified: "bliskcloudstorage.blob.core.windows.net/"
  name "Blisk Browser"
  desc "Developer-oriented browser"
  homepage "https://blisk.io/"

  livecheck do
    url "https://blisk.io/download/installer/?os=mac#{arch}"
    strategy :header_match
  end

  depends_on macos: ">= :catalina"

  app "Blisk.app"

  zap trash: [
    "~/Library/Application Support/Blisk",
    "~/Library/Caches/Blisk",
    "~/Library/Preferences/org.blisk.Blisk.plist",
    "~/Library/Saved Application State/org.blisk.Blisk.savedState",
  ]
end

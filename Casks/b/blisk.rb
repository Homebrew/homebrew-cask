cask "blisk" do
  arch arm: "-m1"

  version "25.0.115.28"
  sha256 arm:   "0173afde0d441dc93bf4c2d9ea151981300d342c4d530790c6507a0efaae5392",
         intel: "c14c9397999ac2058b216168bbb5613f7aa5ef75be71c3658a0fe344bcf07c22"

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

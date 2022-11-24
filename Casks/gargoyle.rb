cask "gargoyle" do
  arch arm: "mac-arm64", intel: "mac-intel"

  version "2022.1"
  sha256 arm:   "46c286890de2fef2ce517f277a0fe3c88c7a75cc2283542e7b9c1d24353cddf8",
         intel: "68448156799315e9204079559b451b6012f8e2d7e1368e32412b1f32f01157e4"

  url "https://github.com/garglk/garglk/releases/download/#{version}/gargoyle-#{version}-#{arch}.dmg"
  name "Gargoyle"
  desc "IO layer for interactive fiction players"
  homepage "https://github.com/garglk/garglk"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Gargoyle.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.garglk.launcher.sfl2",
    "~/Library/Preferences/com.googlecode.garglk.Launcher.plist",
    "~/Library/Saved Application State/com.googlecode.garglk.Launcher.savedState",
  ]
end

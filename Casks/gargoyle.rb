cask "gargoyle" do
  arch arm: "arm64", intel: "x64"

  version "2023.1"
  sha256 arm:   "8f0aa0550abde4427a93052009ef68c3eb663d61c7ffae95dfae9b247d49412b",
         intel: "58788637188d91eded3144dcce9490e65c08fcc5dbc6c9fae93e80805dd5603b"

  url "https://github.com/garglk/garglk/releases/download/#{version}/gargoyle-#{version}-mac-#{arch}.dmg"
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

cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.197"
  sha256 arm:   "eb24189e037d1436ab1947b1e8edf10d7af791f43cfda5983b3994ff76b2f373",
         intel: "6e472a0e4788d4c79b95ae57d30d1afd4f72a6dab9e15bf3fd9d4399507e626c"

  url "https://github.com/Eugeny/tabby/releases/download/v#{version}/tabby-#{version}-macos-#{arch}.zip",
      verified: "github.com/Eugeny/tabby/"
  name "Tabby"
  name "Terminus"
  desc "Terminal emulator, SSH and serial client"
  homepage "https://eugeny.github.io/tabby/"

  livecheck do
    url "https://github.com/Eugeny/tabby/releases/latest"
    strategy :header_match
  end

  auto_updates true

  app "Tabby.app"

  zap trash: [
    "~/Library/Application Support/tabby",
    "~/Library/Preferences/org.tabby.helper.plist",
    "~/Library/Preferences/org.tabby.plist",
    "~/Library/Saved Application State/org.tabby.savedState",
    "~/Library/Services/Open Tabby here.workflow",
    "~/Library/Services/Paste path into Tabby.workflow",
  ]
end

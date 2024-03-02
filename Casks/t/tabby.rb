cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.206"
  sha256 arm:   "9c2f5f6153ec60a7df2c813a5c3ef054607f7043f3df25bd59ccef761cf032df",
         intel: "4fd5a95802e8da3c4214d9ac0f951ecc6787502aafd726f8e4ed107342e27954"

  url "https://github.com/Eugeny/tabby/releases/download/v#{version}/tabby-#{version}-macos-#{arch}.zip",
      verified: "github.com/Eugeny/tabby/"
  name "Tabby"
  name "Terminus"
  desc "Terminal emulator, SSH and serial client"
  homepage "https://eugeny.github.io/tabby/"

  livecheck do
    url :url
    strategy :github_latest
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

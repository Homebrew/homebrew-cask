cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.210"
  sha256 arm:   "53a11cda72b31789a58c5cc1d683b34c3edbe1b861c0d4de153ba3e43d843ae2",
         intel: "7f9d2f1d76632f9b28f8b71f7fe58cdbb73a2cccdb27ee70072097a4457de311"

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

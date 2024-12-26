cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.216"
  sha256 arm:   "ca6bf0a4b4d7b7070b79be6743dbdfd7bfe7c8f0b2b43935a2c80e56addf2054",
         intel: "8d5f3b2d67ac6d14933d64a8c921c536fdc437d157bfaacbf6ce12d225878189"

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

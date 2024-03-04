cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.207"
  sha256 arm:   "6ae803c17ded48c261999df1154da934e9a3d3503095274a384804dbdbd5e35e",
         intel: "0456313f1b9f965d9986f9c14bc57065745a2577e0cdf3bc2c7d83f817084cb5"

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

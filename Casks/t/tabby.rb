cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.199"
  sha256 arm:   "d100867b63477e19288de01197940967f148652ab9b875bfd284347aa62859f9",
         intel: "45a1ef19bbec00698960b13867c3a62a2168a2ee087f62264c21eabd1c993414"

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

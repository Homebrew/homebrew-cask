cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "19.3.0"
  sha256 arm:   "fcbee7a05ee6fb5c64181d112de23b1a2fbd27f6fb1ffe1b65f98cf15a84359a",
         intel: "e82de6399fb2e2447b3527782b67fb1fcef2a34b826a486ee288e755176dfef5"

  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-#{arch}-#{version}.zip"
  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://github.com/will-stone/browserosaurus"

  auto_updates true

  app "Browserosaurus.app"

  uninstall quit: "com.browserosaurus"

  zap trash: [
    "~/Library/Application Support/Browserosaurus",
    "~/Library/Preferences/com.browserosaurus.plist",
  ]
end

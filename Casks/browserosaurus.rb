cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "20.0.1"
  sha256 arm:   "677db76ee5561f2ec8aa2f0a78f2af7b3fa67d29209cb678cb057ffe8d51e9cb",
         intel: "625746567c04a11cb441e238e570427bd66d463db9d92585d4dd6d93a99de463"

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

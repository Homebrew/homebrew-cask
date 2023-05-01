cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "20.2.2"
  sha256 arm:   "4735b26fa13d896d82dfe8915563196b02955d9a31d271954772be9d6f6f7a53",
         intel: "e772cb4803f6868c7d58b85c5e4b5666afb8205367e4fcb099936da3583a599f"

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

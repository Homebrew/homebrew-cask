cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "20.3.0"
  sha256 arm:   "8995cd6f888fd44c7771b6121b5dd6b887f09c85076aab6a1c67197716d3134d",
         intel: "4281ae5e8a40f6422a7773d542ef945eae4dfa75990143f8f341c1509fbe724e"

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

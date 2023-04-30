cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "20.2.1"
  sha256 arm:   "4510a1eff2a156ea0bcfacbabeb6b52e996879fd003d1f6f5d593a525e729b00",
         intel: "ae846a151c00b66a869646f9687a79e027cd1c86939ba33b4020db5e38fa8f0f"

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

cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "20.0.2"
  sha256 arm:   "d3af96f45bfa039b9b376ba36a4cd72c214908010b6616a57aded43cf682bce3",
         intel: "56ec3510f7ef48d1b21f8766d59bebb4291d5d427ec2c8ce5ce9e43231beac8f"

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

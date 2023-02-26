cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "20.1.0"
  sha256 arm:   "f49b8b732a297c7254c93b1fa967b5f0028570bd875d037d343c67fc942cb0d9",
         intel: "fd4d3a94de59833d08ddbe282967962f45040d04b4426be2cfc24d672bdc7e31"

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

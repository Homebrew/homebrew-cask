cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "20.0.0"
  sha256 arm:   "5f9513714c171ad89945f55f94232733032f5076bf2eb4bf78a0a5fb1420ceb2",
         intel: "e1ac02db68098a6332179310038456694cc898c108f2ac4fe6da8a1b1c93fd98"

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

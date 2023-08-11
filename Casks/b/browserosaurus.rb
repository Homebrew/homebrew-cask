cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "20.4.0"
  sha256 arm:   "d512a49e3fca0b5d2aa00bb551eb5caf3ab774c521b749ecabde773d556f7458",
         intel: "7dedd002b873b0db268a8169550c91de4fad35d6d00de0902322a2495374117b"

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

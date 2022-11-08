cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "19.2.0"
  sha256 arm:   "f4da98259668f4a21f89b57a585b464095d0f80d0dd71e83258fbcf1102320a3",
         intel: "fa39c58646e3ba9dec6c57a0f35dba4785415d5a6295ad1578d0fa2d7b361bb4"

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

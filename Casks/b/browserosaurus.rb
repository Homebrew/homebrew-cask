cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "20.6.1"
  sha256 arm:   "dddbeb89c20177667dd74e9d7d0f72ec91b3b5d4cbf38f6cc25db265c29f92a1",
         intel: "a1011b937957479d992c6905113c49688d5cc733175d4d3f8e6a46fe29f90110"

  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-#{arch}-#{version}.zip"
  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://github.com/will-stone/browserosaurus"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Browserosaurus.app"

  uninstall quit: "com.browserosaurus"

  zap trash: [
    "~/Library/Application Support/Browserosaurus",
    "~/Library/Preferences/com.browserosaurus.plist",
  ]
end

cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "20.3.1"
  sha256 arm:   "0fe0743d9565ff4ad2340babad98b68a352f2b3d199e4a4492ba8849abe8840b",
         intel: "aa73e378916634b0ab463046e7b85204fd135de607a8dbc1ebcbfe7bc85aa41e"

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

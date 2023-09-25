cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "20.5.0"
  sha256 arm:   "ab7497966495801e0dd584f1dfca19cf1503295384f6b913531362ac2178933a",
         intel: "c6656bd346e74d3b6ea1bdd6002bef36501d4633f9167315aa41c5607a227084"

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

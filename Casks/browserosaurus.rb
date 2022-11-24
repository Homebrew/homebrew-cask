cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "19.3.3"
  sha256 arm:   "7769c9a8184c17eeb5f064bbd8e9bbdb21842eb6c4a9499c403d6da0bffd96ab",
         intel: "3c9226e8cab2896497750f90135e9f125dcfeaaf4556cd77452405f9b5ea7fb5"

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

cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "20.10.0"
  sha256 arm:   "c3e2a3321a37178ec12c18a17254856df75901d6cc3b4d65d398769450546f93",
         intel: "72f2bf46bd21d0b292e231e3f3b70142d2aa9aca4d548db45520720a4257cd40"

  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-#{arch}-#{version}.zip"
  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://github.com/will-stone/browserosaurus"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Browserosaurus.app"

  uninstall quit: "com.browserosaurus"

  zap trash: [
    "~/Library/Application Support/Browserosaurus",
    "~/Library/Preferences/com.browserosaurus.plist",
  ]
end

cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "20.11.0"
  sha256 arm:   "67fa9134c46e42a8d7b289399a269b3b449a98c5c139cd95ac2e7b91e50c3fd2",
         intel: "236143df9933c8548dee01638437d99fa591154114d8ed58ed671ee1c6ded087"

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

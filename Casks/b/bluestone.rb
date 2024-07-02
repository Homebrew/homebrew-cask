cask "inkdown" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "b678c062fa73551dd5e7891e9a6cc6a648b7b76555dabde99d90da4d3983131f",
         intel: "934e7ad9fc1493115e3cbe7f9bdd533d856021ec6e87a2e591a9568fc5df277b"

  url "https://github.com/1943time/inkdown/releases/download/v#{version}/inkdown-mac-#{arch}.dmg"
  name "Inkdown"
  desc "WYSIWYG Markdown editor"
  homepage "https://github.com/1943time/inkdown"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Inkdown.app"

  zap trash: [
    "~/Library/Application Support/inkdown",
    "~/Library/Preferences/inkdown.plist",
    "~/Library/Saved Application State/inkdown.savedState",
  ]
end

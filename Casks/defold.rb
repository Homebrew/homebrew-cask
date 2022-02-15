cask "defold" do
  version "1.2.192"
  sha256 "367b2415718591917db70a4d376e59b9362556c63b90a6caec4ceaf2f54307fb"

  url "https://github.com/defold/defold/releases/download/#{version}/Defold-x86_64-darwin.dmg",
      verified: "github.com/defold/defold/"
  name "Defold"
  desc "Game engine for development of desktop, mobile and web games"
  homepage "https://defold.com/"

  auto_updates true
  conflicts_with cask: [
    "homebrew/cask-versions/defold-beta",
    "homebrew/cask-versions/defold-alpha",
  ]

  app "Defold.app"

  zap trash: [
    "~/Library/Application Support/Defold",
    "~/Library/Caches/com.defold.editor",
    "~/Library/Preferences/com.defold.editor.plist",
    "~/Library/Saved Application State/com.defold.editor.savedState",
  ]
end

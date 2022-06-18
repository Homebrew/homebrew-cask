cask "defold" do
  version "1.3.3"
  sha256 "1afc838ad461020202a3c9e79dc24308f8d95e5fffb0a3bce15277f1468c566a"

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

cask "defold" do
  version "1.2.190"
  sha256 "0a6ec5f1e27833253dba25b4029332bce9f1eb36a592b3b507705cf0912eddfb"

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

cask "defold" do
  version "1.3.0"
  sha256 "ffc70bfab96b0c6688c55f6478b4266e1044f5a638dbe93ab1d5216cb4af3170"

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

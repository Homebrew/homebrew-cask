cask "defold" do
  version "1.2.189"
  sha256 "78a2d397b2c77e68bf8435fa5901b486ddb50fa043569ac9b763c59442c7168b"

  url "https://github.com/defold/defold/releases/download/#{version}/Defold-x86_64-darwin.dmg",
      verified: "github.com/defold/defold/"
  name "Defold"
  desc "Game engine for development of desktop, mobile and web games"
  homepage "https://defold.com/"

  auto_updates true

  app "Defold.app"

  zap trash: [
    "~/Library/Application Support/Defold",
    "~/Library/Caches/com.defold.editor",
    "~/Library/Preferences/com.defold.editor.plist",
    "~/Library/Saved Application State/com.defold.editor.savedState",
  ]
end

cask "defold@beta" do
  arch arm: "arm64", intel: "x86_64"

  version "1.10.2"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://github.com/defold/defold/releases/download/#{version}-beta/Defold-#{arch}-macos.dmg",
      verified: "github.com/defold/defold/"
  name "Defold"
  desc "Game engine for development of desktop, mobile and web games"
  homepage "https://defold.com/"

  livecheck do
    url "http://d.defold.com/beta/info.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "defold",
    "defold@alpha",
  ]

  app "Defold.app"

  zap trash: [
    "~/Library/Application Support/Defold",
    "~/Library/Caches/com.defold.editor",
    "~/Library/Preferences/com.defold.editor.plist",
    "~/Library/Saved Application State/com.defold.editor.savedState",
  ]
end

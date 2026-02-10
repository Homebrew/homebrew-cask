cask "defold@alpha" do
  arch arm: "arm64", intel: "x86_64"

  version "1.12.2"
  sha256 :no_check # required as upstream package is updated in-place

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

  url "https://github.com/defold/defold/releases/download/#{version}-alpha/Defold-#{arch}-macos.dmg",
      verified: "github.com/defold/defold/"
  name "Defold"
  desc "Game engine for development of desktop, mobile and web games"
  homepage "https://defold.com/"

  livecheck do
    url "https://d.defold.com/alpha/info.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "defold",
    "defold@beta",
  ]

  app "Defold.app"

  zap trash: [
    "~/Library/Application Support/Defold",
    "~/Library/Caches/com.defold.editor",
    "~/Library/Preferences/com.defold.editor.plist",
    "~/Library/Saved Application State/com.defold.editor.savedState",
  ]
end

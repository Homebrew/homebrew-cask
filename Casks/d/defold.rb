cask "defold" do
  arch arm: "arm64", intel: "x86_64"

  version "1.9.0"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://github.com/defold/defold/releases/download/#{version}/Defold-#{arch}-macos.dmg",
      verified: "github.com/defold/defold/"
  name "Defold"
  desc "Game engine for development of desktop, mobile and web games"
  homepage "https://defold.com/"

  # Upstream only marks alpha releases as "pre-release", so the "latest" GitHub
  # release is sometimes a beta version. As such, it's necessary to check
  # multiple recent releases to identify the latest stable version.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  auto_updates true
  conflicts_with cask: [
    "defold@alpha",
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

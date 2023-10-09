cask "defold" do
  arch arm: "arm64", intel: "x86_64"

  version "1.6.0"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://github.com/defold/defold/releases/download/#{version}/Defold-#{arch}-macos.dmg",
      verified: "github.com/defold/defold/"
  name "Defold"
  desc "Game engine for development of desktop, mobile and web games"
  homepage "https://defold.com/"

  # Alpha releases are labeled as "pre-release" but beta releases aren't, so we
  # can't use the `GithubLatest` strategy here.
  livecheck do
    url "https://github.com/defold/defold/releases?q=prerelease%3Afalse"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
    strategy :page_match
  end

  auto_updates true
  conflicts_with cask: [
    "homebrew/cask-versions/defold-alpha",
    "homebrew/cask-versions/defold-beta",
  ]

  app "Defold.app"

  zap trash: [
    "~/Library/Application Support/Defold",
    "~/Library/Caches/com.defold.editor",
    "~/Library/Preferences/com.defold.editor.plist",
    "~/Library/Saved Application State/com.defold.editor.savedState",
  ]
end

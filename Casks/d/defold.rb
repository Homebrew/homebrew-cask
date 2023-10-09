cask "defold" do
  arch arm: "arm64", intel: "x86_64"

  version "1.6.0"
  sha256 arm:   "b2a8793c365eca55cbcfa0809c21aff414c2d35597a6706b7d67881c5c293468",
         intel: "0310ecf9c2168263e63e037a33a6d6d39d5f12199026a75b6867d53d54ebd9f2"

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

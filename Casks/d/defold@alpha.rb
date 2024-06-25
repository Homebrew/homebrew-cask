cask "defold@alpha" do
  arch arm: "arm64", intel: "x86_64"

  version "1.9.1"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://github.com/defold/defold/releases/download/#{version}-alpha/Defold-#{arch}-macos.dmg",
      verified: "github.com/defold/defold/"
  name "Defold"
  desc "Game engine for development of desktop, mobile and web games"
  homepage "https://defold.com/"

  # The `GithubReleases` strategy omits releases marked as pre-release, so we
  # have to use a `strategy` block to work with unstable versions.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)[._-]alpha$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
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

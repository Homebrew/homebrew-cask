cask "reactotron" do
  arch arm: "-arm64"

  version "3.5.1"
  sha256 arm:   "c249703e9dce165d8c30cf8f82ea246960155b2c3c6586a9ec64de441ed55d09",
         intel: "2ecc49b6211b94fd925fd14aa506baae38e53bfa29f94181cf3407acde8c8934"

  url "https://github.com/infinitered/reactotron/releases/download/reactotron-app%40#{version}/Reactotron-#{version}#{arch}-mac.zip"
  name "Reactotron"
  desc "Desktop app for inspecting React JS and React Native projects"
  homepage "https://github.com/infinitered/reactotron"

  # Upstream publishes multiple packages in the same repository and, due to the
  # number of packages that are updated around the same time, the most recent
  # releases may not be for the app. This check searches for `reactotron-app`
  # releases, as the `GithubReleases` strategy may be unreliable in this
  # scenario.
  livecheck do
    url "https://github.com/infinitered/reactotron/releases?q=reactotron-app+prerelease%3Afalse"
    regex(%r{href=["']?[^"' >]*?/tag/reactotron-app(?:%40|@)v?(\d+(?:\.\d+)+)["' >]}i)
    strategy :page_match
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Reactotron.app"

  zap trash: [
    "~/Library/Application Support/Reactotron",
    "~/Library/Logs/Reactotron",
    "~/Library/Preferences/com.reactotron.app.helper.plist",
    "~/Library/Preferences/com.reactotron.app.plist",
    "~/Library/Saved Application State/com.reactotron.app.savedState",
  ]
end

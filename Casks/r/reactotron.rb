cask "reactotron" do
  arch arm: "-arm64"

  version "3.1.3"
  sha256 arm:   "309635236294c82dfa7dd02600e49b7c9a883cc2a53c2ed5b52122aae967d9aa",
         intel: "55a8117a1763b17e11aa3ae6e68247f36d024f969c2764f25156aa9d4c43b4c3"

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

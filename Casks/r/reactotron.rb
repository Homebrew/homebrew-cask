cask "reactotron" do
  version "2.17.1"
  sha256 "0b498386dd5feecd8f5137a629cf2f3170c6c92f1d33eb8e40831e4daddfc959"

  url "https://github.com/infinitered/reactotron/releases/download/v#{version}/Reactotron-#{version}-mac.zip"
  name "Reactotron"
  desc "Desktop app for inspecting React JS and React Native projects"
  homepage "https://github.com/infinitered/reactotron"

  # Upstream publishes multiple packages in the same repository, so we can't
  # rely on the "latest" release being for the application and we can't even
  # guarantee that the most recent releases will contain a release of the app
  # (as of writing, the `GithubReleases` strategy doesn't work for this reason).
  # For the time being, we check the "Quick Installation Guide" file that's
  # linked in the README.
  livecheck do
    url "https://raw.githubusercontent.com/infinitered/reactotron/master/docs/installing.md"
    regex(%r{releases/tag/v?(\d+(?:\.\d+)+)\)}i)
  end

  auto_updates true

  app "Reactotron.app"

  zap trash: [
    "~/Library/Application Support/Reactotron",
    "~/Library/Logs/Reactotron",
    "~/Library/Preferences/com.reactotron.app.helper.plist",
    "~/Library/Preferences/com.reactotron.app.plist",
    "~/Library/Saved Application State/com.reactotron.app.savedState",
  ]
end

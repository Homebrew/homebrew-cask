cask "reactotron" do
  arch arm: "-arm64"

  version "3.10.0"
  sha256 arm:   "253b0082d37678d22703eed7b3842ebb9ca73580bfedbd28b11890a4f825262e",
         intel: "3475547f686f3268028af4742d8c1b8f53faabb1feadef4987daeab84ccfa0a8"

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

  app "Reactotron.app"

  zap trash: [
    "~/Library/Application Support/Reactotron",
    "~/Library/Logs/Reactotron",
    "~/Library/Preferences/com.reactotron.app.helper.plist",
    "~/Library/Preferences/com.reactotron.app.plist",
    "~/Library/Saved Application State/com.reactotron.app.savedState",
  ]
end

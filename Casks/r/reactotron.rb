cask "reactotron" do
  arch arm: "-arm64"
  os macos: "#{arch}-mac.zip", linux: ".AppImage"

  version "3.11.0"
  sha256 arm:          "9d0cd7ddf65de5587160dd7a9e4b862265b7275df548423d20e12dcce1cef1ae",
         intel:        "53d8b29b3ee39f0b6ba0dcf06df6e43a6b529f8e9a0acd76402dd55d7059f4a5",
         x86_64_linux: "e579b3e53963fd81061c72e60ee8f92e63ac000d14a33057d4292c3e2ef58956"

  on_macos do
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
  on_linux do
    depends_on arch: :x86_64

    app_image "Reactotron-#{version}.AppImage", target: "Reactotron.AppImage"

    zap trash: "~/.config/Reactotron"
  end

  url "https://github.com/infinitered/reactotron/releases/download/reactotron-app%40#{version}/Reactotron-#{version}#{os}"
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
end

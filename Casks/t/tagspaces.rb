cask "tagspaces" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "6.14.3"
  sha256 arm:          "d963f018f305b83562d8bb8a94f18f84f419909b5109072d9d81c44a15437a5e",
         intel:        "ccdf3a210c1c8890319f8a744038037c3adc154fd0f63db1fc18c74e2741f3ee",
         arm64_linux:  "f18162f21ace9832e9356e6575ef9e2909d530b43b3671a0e404472d7cfc8200",
         x86_64_linux: "194fa91b1b0d5fee47c1882c6cb57d28847e68c38365411de7f36faf6b175339"

  on_macos do
    depends_on macos: :ventura

    app "TagSpaces.app"

    zap trash: [
      "~/Library/Application Support/TagSpaces",
      "~/Library/Preferences/org.tagspaces.desktopapp.plist",
      "~/Library/Saved Application State/org.tagspaces.desktopapp.savedState",
    ]
  end
  on_linux do
    app_image "tagspaces-linux-#{arch}-#{version}.AppImage", target: "TagSpaces.AppImage"
  end

  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-#{os}-#{arch}-#{version}.#{url_end}"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  livecheck do
    url :url
    strategy :github_latest
  end
end

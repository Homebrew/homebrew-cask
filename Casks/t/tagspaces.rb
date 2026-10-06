cask "tagspaces" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "6.14.1"
  sha256 arm:          "ada9624362c65d4815c0ed783217fd51e3afd5fb2d9680c08a7d5d6de1488e8f",
         intel:        "02803ef0c4919cb63520fb3d62e5ea7ed4917b1eb0de96006dcdc1397325811c",
         arm64_linux:  "a08c122ae0e3994df89e57e6702a9be4b6eb7d232aa2bdb778364c4c5c5c4d5f",
         x86_64_linux: "27437d3aa60052c6d009761f1f8f0419af11831b4e9bde5197cb4d2f94f33e7e"

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

cask "tagspaces" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "6.14.0"
  sha256 arm:          "b9227ede2a112b01b9675b314cbbba0126a75c2bf931d935c1811b10d54b6e85",
         intel:        "dba0a839cc0f7bbac4322cd20f426c2abca686c9dc463af7d6ad461cd82b7076",
         arm64_linux:  "eba67ebd8576361909e7ec902821f528b6f08feaae69b67c664e9fbcf0a8b5d9",
         x86_64_linux: "cfb299b44dedbce0e74dd639f41d9001b3b199e85accb058c96b9e5daf7f1d65"

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

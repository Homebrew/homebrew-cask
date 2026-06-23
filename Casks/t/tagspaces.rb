cask "tagspaces" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "6.13.3"
  sha256 arm:          "afad9de23092915d3d6c39f0689cef28d93ab58cb089112891ac9278f6bb8e92",
         intel:        "d4d9915ac78a56c48682e165f648ba339c6855a609afa4515d85ed3b17cd07bc",
         arm64_linux:  "862d072a8f5d2722bd35626b81fb8c0aa54b305a4523fedc0e829a8322ecd005",
         x86_64_linux: "b69a362d585d82576c2f2b065969a85967bc82ec0b76200581115b7ffe8c7717"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-#{os}-#{arch}-#{version}#{url_end}",
      verified: "github.com/tagspaces/tagspaces/"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    depends_on macos: :monterey

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
end

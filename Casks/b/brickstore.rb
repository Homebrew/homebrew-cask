cask "brickstore" do
  os macos: "macOS", linux: "Linux-AppImage"
  url_end = on_system_conditional macos: ".dmg", linux: "-x86_64.AppImage"

  version "2026.8.1"

  on_macos do
    sha256 "2ddecbd2ca849ddc765a273ff11c6e379b7bf4ec9f653c4b8b3562a65f3958ab"

    depends_on macos: :ventura

    app "BrickStore.app"

    zap trash: [
      "~/Library/Preferences/de.brickforge.brickstore.plist",
      "~/Library/Preferences/org.brickstore.BrickStore.plist",
      "~/Library/Saved Application State/de.brickforge.brickstore.savedState",
    ]
  end
  on_linux do
    sha256 "d6746398e368a8b807902dcae7d097fe1408f73131165bfbc19c94ede02e974a"

    depends_on arch: :x86_64

    app_image "Linux-AppImage-BrickStore-#{version}-x86_64.AppImage", target: "BrickStore.AppImage"
  end

  url "https://github.com/rgriebl/brickstore/releases/download/v#{version}/#{os}-BrickStore-#{version}#{url_end}"
  name "BrickStore"
  desc "BrickLink offline management tool"
  homepage "https://www.brickstore.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end
end

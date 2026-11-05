cask "openscreen" do
  arch arm: "arm64", intel: "x64"
  os macos: "Mac-#{arch}", linux: "Linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "2.2.2"
  sha256 arm:          "c21f28f1b6f83ff50cee3f4e902088327e1004083986aaf2e3c7996f6ca7a92b",
         intel:        "7ff125b5f37f691a190e3252f9cb5d3264b71ac1df21d39b9d401c9a614ba7b8",
         x86_64_linux: "6439650cedf119e017ad81fb4382bddf22ae321bd11d446c8dc0de52d72ff773"

  on_macos do
    depends_on macos: :ventura

    app "Openscreen.app"
    binary "#{appdir}/Openscreen.app/Contents/MacOS/Openscreen", target: "openscreen"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.etiennelescot.openscreen.sfl*",
      "~/Library/Application Support/openscreen",
      "~/Library/Caches/com.etiennelescot.openscreen",
      "~/Library/Preferences/com.etiennelescot.openscreen.plist",
      "~/Library/Saved Application State/com.etiennelescot.openscreen.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Openscreen-Linux-#{version}.AppImage", target: "Openscreen.AppImage"

    zap trash: "~/.config/openscreen"
  end

  url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-#{os}-#{version}.#{url_end}"
  name "OpenScreen"
  desc "Screen recorder and demo video editor"
  homepage "https://getopenscreen.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end

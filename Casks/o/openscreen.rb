cask "openscreen" do
  arch arm: "arm64", intel: "x64"
  os macos: "Mac-#{arch}", linux: "Linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "2.2.1"
  sha256 arm:          "3fc1e1f7fe96e594175fef2200afee848ead645a19aca6c45e28b92e9ac14d19",
         intel:        "75c6a064b41314ba38ec62af2c06046c0ab961d6df0a350edbd809f53c5da85f",
         x86_64_linux: "c77a358c9cb3fda8b134abc93dbe67b8e3a419cbc623198b4d3769c00eb8bfe7"

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

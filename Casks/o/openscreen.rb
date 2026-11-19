cask "openscreen" do
  arch arm: "arm64", intel: "x64"
  os macos: "Mac-#{arch}", linux: "Linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "2.3.0"
  sha256 arm:          "04d027580bf11890efd3f24862ed62bc7d3cdf720a95cf90376efc4d832a251e",
         intel:        "3b61d39984607edbe08b3b29a37f594c63f4b7238176ddcc5772793f7442c695",
         x86_64_linux: "8bc894f406122a058ae4d749d009b54abe8848486f830b849fe4b247d8290841"

  on_macos do
    depends_on macos: :ventura

    app "Openscreen.app"
    binary "#{appdir}/Openscreen.app/Contents/MacOS/Openscreen", target: "openscreen"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.etiennelescot.openscreen.sfl*",
      "~/Library/Application Support/openscreen",
      "~/Library/Caches/com.etiennelescot.openscreen",
      "~/Library/Logs/Openscreen",
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

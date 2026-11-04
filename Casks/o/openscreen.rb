cask "openscreen" do
  arch arm: "arm64", intel: "x64"
  os macos: "Mac-#{arch}", linux: "Linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "2.1.2"
  sha256 arm:          "431e90d87bbd64f13f68929a4d063274087a9b3554876af05ca0e3f94e70151b",
         intel:        "7b55e8878cb359ac0f0f3cf44af171fc29e24cf2ac6e65d9c8a732367731b782",
         x86_64_linux: "6e51a170990c56df63d213b01443b0b435674747353c6926a45c29a4ee0aa9d6"

  on_macos do
    depends_on macos: :ventura

    app "Openscreen.app"
    binary "#{appdir}/Openscreen.app/Contents/MacOS/Openscreen", target: "openscreen"

    zap trash: [
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

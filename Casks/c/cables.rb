cask "cables" do
  arch arm: "-arm64", intel: "-x64"
  url_end = on_system_conditional macos: "mac#{arch}.dmg", linux: "linux-x64.AppImage"

  version "0.11.3"
  sha256 arm:          "274e36e7604d070b9fabacdd6a204b3df748be6ed907cbcce70a28d66586570f",
         intel:        "40d4e7f5534a44161baba90b09a9ac1dba06a46e4abc369e259a1a43a829b554",
         x86_64_linux: "bb8ff921862bfd7084c0a7c265ba98cfb2b3ec4ecf06897ad5b67ca75340b8f2"

  on_macos do
    depends_on macos: :monterey

    app "cables.app"

    uninstall quit: "gl.cables.standalone"

    zap trash: [
      "~/Library/Application Support/cables_electron",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/gl.cables.standalone.sfl*",
      "~/Library/Logs/cables_electron",
      "~/Library/Preferences/gl.cables.standalone.plist",
      "~/Library/Saved Application State/gl.cables.standalone.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "cables-#{version}-linux-x64.AppImage", target: "Cables.AppImage"
  end

  url "https://github.com/cables-gl/cables_electron/releases/download/v#{version}/cables-#{version}-#{url_end}"
  name "Cables"
  desc "Visual programming tool"
  homepage "https://github.com/cables-gl/cables_electron"

  livecheck do
    url "https://dev.cables.gl/api/downloads/latest/"
    strategy :json do |json|
      json["name"]
    end
  end
end

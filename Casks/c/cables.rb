cask "cables" do
  arch arm: "-arm64", intel: "-x64"
  url_end = on_system_conditional macos: "mac#{arch}.dmg", linux: "linux-x64.AppImage"

  version "0.12.0"
  sha256 arm:          "dfc377a76cecf99155a6e65ff09da47666909cf30ba0ed8d7561ed8a808b002e",
         intel:        "5d31ab49a893cd5565d88a2162ad679c1ded10408d9be3aa1b91e5fcfecee00e",
         x86_64_linux: "9847e3d33b4e9a4e76b768745427fab69788e1e11887d45bc5c8df016cc45e0c"

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

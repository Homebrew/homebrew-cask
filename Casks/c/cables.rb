cask "cables" do
  arch arm: "-arm64", intel: "-x64"
  url_end = on_system_conditional macos: "mac#{arch}.dmg", linux: "linux-x64.AppImage"

  version "0.11.2"
  sha256 arm:          "cce155854f2c674448e943f84d2e12cb8e9e64624e82c516de301d3b2086a333",
         intel:        "03df13de1276690fbfaee6171bbe0b60592f21779a7265d530ae555a026eb225",
         x86_64_linux: "bd39160723abfe6343e47502612b60d5df02272ae1e2ebd39a4baef0c885365d"

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

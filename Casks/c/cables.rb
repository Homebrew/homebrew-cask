cask "cables" do
  arch arm: "-arm64", intel: "-x64"
  url_end = on_system_conditional macos: "mac#{arch}.dmg", linux: "linux-x64.AppImage"

  version "0.11.0"

  on_macos do
    sha256 arm:   "babf02969076034c1ed67a7d23fe35490d9b6c19eb4a3dbf3c015a18e5c019c5",
           intel: "d16f7d00d1ad521f22d2df53b941b5030f60c68c0c754a0cfd5c4df5b2c328a0"

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
    sha256 "714d3510fc79186f9521f2f97afdb17f4fd1980ccc880c9950a4ddc6823f7082"

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

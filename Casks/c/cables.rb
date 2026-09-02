cask "cables" do
  arch arm: "-arm64", intel: "-x64"
  url_end = on_system_conditional macos: "mac#{arch}.dmg", linux: "linux-x64.AppImage"

  version "0.11.1"

  on_macos do
    sha256 arm:   "a03b1051f00061a991fcc11b3771fd09eb890f5febd313b912000ead380f3e01",
           intel: "2b207148c5297275d4657d1e9cd25bca75860eba9f130af9b93b553774ce57e6"

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
    sha256 "e42bb406228b0d34e14acc45b739e8c1169528e9bf469273473924018aa60acb"

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

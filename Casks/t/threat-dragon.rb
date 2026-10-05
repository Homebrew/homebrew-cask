cask "threat-dragon" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "2.6.2"
  sha256 arm:          "43c2d8564741bf11e4e8cc7b7400023a8085aaf5832c7e9c438b5d644d732d0b",
         intel:        "eaeeebfd3c33683c503e4ec27bebf51598689899af29193994929999006c8178",
         x86_64_linux: "ed9bf22d3ec2c2e3653ab56b11dba16c3888c056428ad805a678f1bba215f038"

  on_macos do
    app "Threat-Dragon-ng.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.owasp.threatdragon.sfl*",
      "~/Library/Application Support/Threat Dragon",
      "~/Library/Caches/org.owasp.threatdragon*",
      "~/Library/Caches/threat-dragon-updater",
      "~/Library/HTTPStorages/org.owasp.threatdragon",
      "~/Library/Logs/Threat Dragon",
      "~/Library/Preferences/ByHost/org.owasp.threatdragon.ShipIt.*.plist",
      "~/Library/Preferences/org.owasp.threatdragon.plist",
      "~/Library/Saved Application State/org.owasp.threatdragon.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Threat-Dragon-ng-#{version}#{arch}.AppImage", target: "Threat Dragon.AppImage"

    zap trash: [
      "~/.cache/threat-dragon-updater",
      "~/.config/Threat Dragon",
    ]
  end

  url "https://github.com/OWASP/threat-dragon/releases/download/v#{version}/Threat-Dragon-ng-#{version}#{arch}.#{os}"
  name "Threat Dragon"
  desc "Threat modeling tool"
  homepage "https://owasp.org/projects/threat-dragon"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end

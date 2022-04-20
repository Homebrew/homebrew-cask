cask "descript" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  archdmgsuffix = Hardware::CPU.intel? ? "" : "-arm64"

  version "37.1.2,20220419.1"
  sha256

  if Hardware::CPU.intel?
    sha256 "6acde97dbae4056b57a401ed9ae4f4f589456056fcb7881b99e07ca43a46cb29"
  else
    sha256 "1dd8111342037d7ecfd85295f41b922b89c7c7b99895690f86a93c45e052efac"
  end

  url "https://electron.descript.com/Descript-#{version.csv.first}-release.#{version.csv.second}#{archdmgsuffix}.dmg"
  name "Descript"
  desc "Audio and video editor"
  homepage "https://www.descript.com/"

  livecheck do
    url "https://web.descript.com/download?platform=mac&arch=#{arch}"
    strategy :header_match do |headers|
      version = headers["location"][/Descript-(\d+(?:\.\d+)*)/i, 1]
      release = headers["location"][/-release.(\d+(?:\.\d+)*).dmg/i, 1]
      next if version.blank? || release.blank?

      "#{version},#{release}"
    end
  end

  auto_updates true

  app "Descript.app"

  zap trash: [
    "~/Library/Application Support/Descript",
    "~/Library/Caches/com.descript.Descript-Installer",
    "~/Library/Caches/com.descript.beachcube",
    "~/Library/Caches/com.descript.beachcube.ShipIt",
    "~/Library/Preferences/com.descript.Descript-Installer.plist",
    "~/Library/Preferences/com.descript.ScreenRecorder.plist",
    "~/Library/Preferences/com.descript.beachcube.plist",
    "~/Library/Saved Application State/com.descript.Descript-Installer.savedState",
    "~/Library/Saved Application State/com.descript.beachcube.savedState",
  ]
end

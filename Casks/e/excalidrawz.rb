cask "excalidrawz" do
  version "2.5.1"
  sha256 "290cbaf9226c94728a6e2d71d201c0e9b0be48d06186dce2c744220aebabeb63"

  url "https://github.com/chocoford/ExcalidrawZ/releases/download/v#{version.csv.first}/ExcalidrawZ.#{version}.dmg"
  name "ExcalidrawZ"
  desc "Excalidraw client"
  homepage "https://excalidrawz.chocoford.com/"

  livecheck do
    url "https://excalidrawz.chocoford.com/downloads/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "ExcalidrawZ.app"

  uninstall quit: "com.chocoford.excalidraw"

  zap trash: [
    "~/Library/Application Scripts/com.chocoford.excalidraw",
    "~/Library/Application Scripts/group.com.chocoford.excalidraw",
    "~/Library/Containers/com.chocoford.excalidraw",
    "~/Library/Group Containers/group.com.chocoford.excalidraw",
  ]
end

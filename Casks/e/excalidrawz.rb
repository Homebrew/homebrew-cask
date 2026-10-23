cask "excalidrawz" do
  version "2.4.5"
  sha256 "edd9cc2162f9d20347948b984b8e9de74b5bec0f948f5282b8df3519c219694e"

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

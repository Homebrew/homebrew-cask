cask "excalidrawz" do
  version "2.4.3"
  sha256 "7cb3a00f390a10bf0793877f0c85bcfa5c9ba6951631aecae69ec36542fa012c"

  url "https://github.com/chocoford/ExcalidrawZ/releases/download/v#{version.csv.first}/ExcalidrawZ.#{version}.dmg",
      verified: "github.com/chocoford/ExcalidrawZ/releases/download/"
  name "ExcalidrawZ"
  desc "Excalidraw client"
  homepage "https://excalidrawz.chocoford.com/"

  livecheck do
    url "https://excalidrawz.chocoford.com/downloads/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "ExcalidrawZ.app"

  uninstall quit: "com.chocoford.excalidraw"

  zap trash: [
    "~/Library/Application Scripts/com.chocoford.excalidraw",
    "~/Library/Containers/com.chocoford.excalidraw",
  ]
end

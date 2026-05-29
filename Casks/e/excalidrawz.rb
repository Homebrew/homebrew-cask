cask "excalidrawz" do
  version "2.0.2,78"
  sha256 "35e59204750ae016825bfac1adc765539ae07db0c9d9a7c5c434367f47bd27ff"

  url "https://github.com/chocoford/ExcalidrawZ/releases/download/v#{version.csv.first}/ExcalidrawZ.#{version.tr(",", ".")}.dmg",
      verified: "github.com/chocoford/ExcalidrawZ/releases/download/"
  name "ExcalidrawZ"
  desc "Excalidraw client"
  homepage "https://excalidrawz.chocoford.com/"

  livecheck do
    url "https://excalidrawz.chocoford.com/downloads/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "ExcalidrawZ.app"

  zap trash: [
    "~/Library/Application Scripts/com.chocoford.excalidraw",
    "~/Library/Containers/com.chocoford.excalidraw",
  ]
end

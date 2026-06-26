cask "excalidrawz" do
  version "2.2.1"
  sha256 "4cdf74cb1df5ca488114cf24033017d1acba8d3b6d5a8e460e99f6b18ff23a80"

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

  zap trash: [
    "~/Library/Application Scripts/com.chocoford.excalidraw",
    "~/Library/Containers/com.chocoford.excalidraw",
  ]
end

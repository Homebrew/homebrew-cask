cask "excalidrawz" do
  version "2.2.3"
  sha256 "5946084b223546e0d2cb8f32723cc626ea8ebcac3c5d484dc27dbc8485d50191"

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

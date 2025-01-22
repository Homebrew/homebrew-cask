cask "excalidrawz" do
  version "1.2.10"
  sha256 "7bf7ea8c7e889ac62b6e1901eee0ecef6ee4e1206d020d4a8e51e725b115bb8a"

  url "https://github.com/chocoford/ExcalidrawZ/releases/download/v#{version}/ExcalidrawZ.#{version}.dmg",
      verified: "github.com/chocoford/ExcalidrawZ/releases/download/"
  name "ExcalidrawZ"
  desc "Excalidraw client"
  homepage "https://excalidrawz.chocoford.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "ExcalidrawZ.app"

  zap trash: [
    "~/Library/Application Scripts/com.chocoford.excalidraw",
    "~/Library/Containers/com.chocoford.excalidraw",
  ]
end

cask "excalidrawz" do
  version "1.2.4"
  sha256 "1cdb3125550087a7d854d1f312fb84840d9646786d2fdd42342dcb6db4ac86a1"

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

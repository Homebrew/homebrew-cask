cask "excalidrawz" do
  version "1.2.6"
  sha256 "bf4759a2652d8b477df5544ac7cc687d382848723824a3aa4c4148b20fb50146"

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

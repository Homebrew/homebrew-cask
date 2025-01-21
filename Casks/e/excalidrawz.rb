cask "excalidrawz" do
  version "1.2.9"
  sha256 "dfe1168c10445b3d85db8162bc2f714a0c4b394dfbfddc36e3070d466cdb3482"

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

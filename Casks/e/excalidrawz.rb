cask "excalidrawz" do
  version "1.6.0"
  sha256 "fcf6151f2e230e639ff0bb94714b014b5de4b29d9e1ae72c2ffcc4e32977cf02"

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

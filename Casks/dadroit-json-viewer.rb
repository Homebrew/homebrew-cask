cask "dadroit-json-viewer" do
  version "2.0.1"
  sha256 :no_check

  url "https://dadroit.com/releases/mac/DadroitJSONViewer.zip"
  name "Dadroit JSON Viewer"
  desc "Rapid JSON Viewer to open large data files in a blink"
  homepage "https://dadroit.com/"

  livecheck do
    url "https://dadroit.com/download/"
    regex(/>Ver.*?(\d+(?:\.\d+)+)/i)
  end

  app "Dadroit JSON Viewer.app"

  zap trash: [
    "~/Library/Saved Application State/com.dadroit.Viewer.savedState",
  ]
end

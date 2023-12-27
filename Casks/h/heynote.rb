cask "heynote" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "774d1ca0e4760d3eed4de4257e04e6c91589bb63aa4614bc4268052e650af336",
         intel: "73cf809571f2ea49990487a232adaf5581ae171bc7deb803c95e40c4dbf93db2"

  url "https://github.com/heyman/heynote/releases/download/v#{version}/Heynote_#{version}_#{arch}.dmg",
      verified: "github.com/heyman/heynote/"
  name "Heynote"
  desc "Dedicated scratchpad for developers"
  homepage "https://heynote.com/"

  depends_on macos: ">= :catalina"

  app "Heynote.app"

  zap trash: [
    "~/Library/Application Support/Heynote",
    "~/Library/Logs/Heynote",
    "~/Library/Saved Application State/com.heynote.app.savedState",
  ]
end

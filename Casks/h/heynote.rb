cask "heynote" do
  arch arm: "arm64", intel: "x64"

  version "1.7.0"
  sha256 arm:   "c82de320188a5422c8fb0dff2bc11b69a114433b7a5b02bd99acb41152061500",
         intel: "656d44c6f6d8beadb34eee30181a3d9d677d8173846f692c622980f16bc12127"

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

cask "heynote" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "e75c1617b4e3ad8b6e4bfbb1cb91916c5973b8202c89d7000b77cf1504d826a5",
         intel: "66a1f34e64e9b5c37c6a569060d7c0314aad00b88fa3a9ff91a509abbe4295a8"

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

cask "textream" do
  version "1.6.5"
  sha256 "d007423a1bbd65b95e5ad9b2ffb29fb6a5004a55389991c523875b16edc01570"

  url "https://github.com/f/textream/releases/download/v#{version}/Textream.dmg"
  name "Textream"
  desc "Teleprompter that highlights scripts in real time as you speak"
  homepage "https://github.com/f/textream"

  depends_on macos: :sequoia

  app "Textream.app"

  zap trash: [
    "~/Library/Caches/dev.fka.textream",
    "~/Library/HTTPStorages/dev.fka.textream",
    "~/Library/Preferences/dev.fka.textream.plist",
    "~/Library/Saved Application State/dev.fka.textream.savedState",
  ]
end

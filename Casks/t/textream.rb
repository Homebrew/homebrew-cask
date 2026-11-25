cask "textream" do
  version "1.8.0"
  sha256 "7b9fbaee3554f9ecc47f86d5a7044a093006228efa62aafedd5255392a60d8a2"

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

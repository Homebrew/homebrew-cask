cask "textream" do
  version "1.7.1"
  sha256 "b1225e2df372558cec5d7e42095b70e91249cb7898ef4a12ff6013f02a4d15b9"

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

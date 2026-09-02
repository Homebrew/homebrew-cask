cask "textream" do
  version "1.7.0"
  sha256 "ba88abcfbf27af0956297c6b5a6acae416c1791a9927fd7795df9b1dd9fe064c"

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

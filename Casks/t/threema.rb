cask "threema" do
  version "1.2.39"
  sha256 :no_check

  url "https://releases.threema.ch/web-electron/v1/release/Threema-Latest.dmg"
  name "Threema"
  desc "End-to-end encrypted instant messaging application"
  homepage "https://threema.ch/"

  livecheck do
    url "https://threema.ch/en/whats-new/desktop"
    regex(/Threema\s*(\d+(?:\.\d+)+)\s*for\s*Desktop/i)
  end

  app "Threema.app"

  zap trash: [
    "~/Library/Application Support/threema-consumer-web",
    "~/Library/Logs/threema-consumer-web",
    "~/Library/Preferences/threema-consumer-web.plist",
    "~/Library/Saved Application State/threema-consumer-web.savedState",
  ]
end

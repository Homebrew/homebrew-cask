cask "notchy" do
  version "1.0.8"
  sha256 "e220bf327395727eaea85cccb890a17c6136da68ae12b6149ffaef721b224c19"

  url "https://notchy.dev/Notchy-#{version}.zip"
  name "Notchy"
  desc "Fluid Dynamic Island utility for the notch"
  homepage "https://notchy.dev/"

  livecheck do
    url "https://notchy.dev/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Notchy.app"

  zap trash: [
    "~/Library/Application Support/Notchy",
    "~/Library/Caches/com.vishvavariya.Notchy",
    "~/Library/HTTPStorages/com.vishvavariya.Notchy",
    "~/Library/Preferences/com.vishvavariya.Notchy.plist",
    "~/Library/Saved Application State/com.vishvavariya.Notchy.savedState",
  ]
end

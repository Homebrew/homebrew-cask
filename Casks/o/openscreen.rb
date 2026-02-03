cask "openscreen" do
  version "1.1.0"
  sha256 "5206c37cae08d16345f38c3be01ee02350be25a3a25fb9dfd6e0e4e337f9496c"

  url "https://github.com/siddharthvaddem/openscreen/releases/download/v#{version}/Openscreen-mac-installer.dmg"
  name "OpenScreen"
  desc "Open-source screen recorder"
  homepage "https://github.com/siddharthvaddem/openscreen"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Openscreen.app"

  zap trash: [
    "~/Library/Application Support/openscreen",
    "~/Library/Preferences/com.electron.openscreen.plist",
    "~/Library/Saved Application State/com.electron.openscreen.savedState",
  ]
end

cask "infinity" do
  version "1.2.2"
  sha256 "49f43d5a3dbbeb0f51b627c9d654bafcbd928b30f794721f3643559b4c2c9a41"

  url "https://downloads.startinfinity.com/desktop/production/#{version}/infinity_#{version}_darwin_universal.dmg"
  name "Infinity"
  desc "Customizable work management platform"
  homepage "https://startinfinity.com/"

  livecheck do
    url "https://startinfinity.com/desktop-apps/download?url=https%3A%2F%2Fs3.amazonaws.com%2Fdownloads.startinfinity.com%2Fdesktop%2Fproduction%2Finfinity_darwin_universal.dmg"
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "Infinity.app"

  uninstall quit: "com.electron.infinity"

  zap trash: [
    "~/Library/Application Support/Infinity",
    "~/Library/Preferences/com.electron.infinity.plist",
    "~/Library/Saved Application State/com.electron.infinity.savedState",
  ]
end

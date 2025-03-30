cask "azahar" do
  version "2120.2"
  sha256 "74a0cad400ffc9fcb590a82d0660474ac0898e02eac5c3a9b8c08096d3af0b07"

  url "https://github.com/azahar-emu/azahar/releases/download/#{version}/azahar-#{version}-macos-universal.zip",
      verified: "github.com/azahar-emu/azahar/"
  name "Azahar"
  desc "Nintendo 3DS emulator"
  homepage "https://azahar-emu.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "azahar-#{version}-macos-universal/Azahar.app"

  uninstall delete: "/Applications/Azahar"

  zap trash: [
    "~/Library/Application Support/Azahar",
    "~/Library/Preferences/com.azahar-emu.azahar.plist",
    "~/Library/Saved Application State/com.azahar-emu.azahar.savedState",
  ]
end

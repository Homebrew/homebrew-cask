cask "exodus" do
  version "21.8.27"

  if Hardware::CPU.intel?
    sha256 "ff8f97acc820559b522b939e5c675975c37e4a414869e6fc3886ff5673038ce8"
    url "https://downloads.exodus.com/releases/exodus-macos-#{version}.dmg"
  else
    sha256 "9e95a78315c4476d65f76490f557a9e309a12b20de9dfc8f48bf82db93c8f9e0"
    url "https://downloads.exodus.com/releases/exodus-macos-arm64-#{version}.dmg"
  end

  name "Exodus"
  desc "Desktop wallet for cryptocurrency assets"
  homepage "https://www.exodus.com/"

  livecheck do
    url "https://www.exodus.com/releases/"
    regex(%r{/hashes[._-]exodus[._-]?v?(\d+(?:\.\d+)+)\.txt}i)
  end

  auto_updates true

  app "Exodus.app"

  zap trash: [
    "~/Library/Application Support/Exodus",
    "~/Library/Preferences/com.electron.exodus.helper.plist",
    "~/Library/Preferences/com.electron.exodus.plist",
    "~/Library/Saved Application State/com.electron.exodus.savedState",
  ]
end

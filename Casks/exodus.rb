cask "exodus" do
  arch = Hardware::CPU.intel? ? "macos" : "macos-arm64"

  version "22.7.1"

  if Hardware::CPU.intel?
    sha256 "43a3d5829283b683d79f184cb695b9813eb1144e96fc97c58af5e4cc8db6eec8"
  else
    sha256 "f31245bc824a5f4c75639681fe78417c35cf284b313b70a329d44f17d0335613"
  end

  url "https://downloads.exodus.com/releases/exodus-#{arch}-#{version}.dmg"
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

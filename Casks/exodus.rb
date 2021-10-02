cask "exodus" do
  version "21.9.29"

  if Hardware::CPU.intel?
    sha256 "f99d4a02a0eabc2fb0f49e387875503f8a05e43a4532c0ed536fb8ca2f3889eb"
    url "https://downloads.exodus.com/releases/exodus-macos-#{version}.dmg"
  else
    sha256 "75e2426e5ebf7b19ec0a250cfbf4b842916284e9096cc0fb3777e055ff293951"
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

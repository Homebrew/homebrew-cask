cask "exodus" do
  version "21.10.11"

  if Hardware::CPU.intel?
    sha256 "373dd17e40bfd61a46cf9133eaad159ded9d083db4e8dd9db92a08b6c0b835a8"
    url "https://downloads.exodus.com/releases/exodus-macos-#{version}.dmg"
  else
    sha256 "bb20343f8fe740cca6d8b6f36cf687e538ac5ad72353f8d3168b7945c5f2b743"
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

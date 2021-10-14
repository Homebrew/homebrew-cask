cask "exodus" do
  arch = Hardware::CPU.intel? ? "macos" : "macos-arm64"

  version "21.10.11"

  url "https://downloads.exodus.com/releases/exodus-#{arch}-#{version}.dmg"
  if Hardware::CPU.intel?
    sha256 "373dd17e40bfd61a46cf9133eaad159ded9d083db4e8dd9db92a08b6c0b835a8"
  else
    sha256 "bb20343f8fe740cca6d8b6f36cf687e538ac5ad72353f8d3168b7945c5f2b743"
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

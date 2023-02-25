cask "exodus" do
  arch arm: "macos-arm64", intel: "macos"

  version "23.2.20"
  sha256 arm:   "f38dd410800a61ca77fcb321b91aeb894e1b6bc6b1137f658627d6d0defccf88",
         intel: "16d0fad0cd734a2c01c4eaabf90738b811c82e7aa9b14194c309e710e9b26554"

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

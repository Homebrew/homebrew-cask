cask "melonds" do
  version "1.1"
  sha256 "79843a5e5cab93188bd11942bff5440b9505ee91c6f526f7e90c22e3cff6718d"

  url "https://github.com/melonDS-emu/melonDS/releases/download/#{version}/melonDS-#{version}-macOS-universal.zip",
      verified: "github.com/melonDS-emu/melonDS/"
  name "melonDS"
  desc "Nintendo DS and DSi emulator"
  homepage "https://melonds.kuribo64.net/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "melonDS.app"

  zap trash: "~/Library/Preferences/melonDS/melonDS.ini"
end

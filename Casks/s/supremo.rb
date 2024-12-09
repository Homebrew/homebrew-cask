cask "supremo" do
  version "4.11.3.2751"
  sha256 :no_check

  url "https://www.nanosystems.com/public/download/macOS/stable/Supremo.dmg",
      verified: "nanosystems.com/public/download/macOS/"
  name "Supremo"
  desc "Remote desktop software"
  homepage "https://www.supremocontrol.com/"

  livecheck do
    url "https://www.supremocontrol.com/changelog-macos/"
    regex(/Supremo\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  app "Supremo.app"

  zap trash: [
    "~/Library/Application Support/SupremoRemoteDesktop",
    "~/Library/Preferences/Supremo.plist",
  ]

  caveats do
    requires_rosetta
  end
end

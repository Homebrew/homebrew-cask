cask "supremo" do
  version "4.11.3.2751"
  sha256 :no_check

  url "https://www.nanosystems.it/public/download/macOS/Supremo.dmg",
      verified: "nanosystems.it/public/download/macOS/"
  name "Supremo"
  desc "Remote desktop control made easy, quick and secure"
  homepage "https://www.supremocontrol.com/"

  livecheck do
    url :url
    strategy :extract_plist
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

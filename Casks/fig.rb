cask "fig" do
  version "1.0.52,311"
  sha256 "817e9460c818c3b07181a1f95906256df78aeced983530d26944d74abf3dbdb7"

  url "https://versions.withfig.com/fig%20#{version.after_comma}.dmg",
      verified: "versions.withfig.com/"
  name "fig"
  desc "Reimagine your terminal"
  homepage "https://fig.io/"

  livecheck do
    url "https://versions.withfig.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Fig.app"

  uninstall script: "#{appdir}/Fig.app/Contents/Resources/config/tools/uninstall-script.sh"

  zap trash: [
    "~/.fig",
    "~/.fig.dotfiles.bak",
    "~/Library/Application Support/com.mschrage.fig",
    "~/Library/Caches/com.mschrage.fig",
    "~/Library/Caches/fig",
    "~/Library/Preferences/com.mschrage.fig.*",
    "~/Library/WebKit/com.mschrage.fig",
  ]
end

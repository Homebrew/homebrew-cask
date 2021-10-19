cask "fig" do
  version "1.0.51,285"
  sha256 "f0ed6ec30c3ba7a47ae928f358e1655840118d32f5ed29d03c54e5f38b713b51"

  url "https://versions.withfig.com/fig%20#{version.before_comma}.dmg",
      verified: "versions.withfig.com/"
  name "fig"
  desc "Reimagine your terminal"
  homepage "https://fig.io/"

  livecheck do
    url "https://versions.withfig.com/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Fig.app"

  uninstall script: "#{appdir}/Fig.app/Contents/Resources/uninstall.sh"

  zap trash: [
    "~/Library/Application Support/com.mschrage.fig",
    "~/Library/Caches/com.mschrage.fig",
    "~/Library/Preferences/com.mschrage.fig.plist",
  ]
end

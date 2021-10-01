cask "fig" do
  version "1.0.49,270"
  sha256 "2209f614d7d09081755a9906539712aed0f23bc395fe1b1e508b506806faaaf4"

  url "https://versions.withfig.com/fig%20#{version.before_comma}.dmg",
      verified: "versions.withfig.com"
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

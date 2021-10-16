cask "fig" do
  version "1.0.50,274"
  sha256 "2ee8c5b5623df94757e394fbaff322140f8c63bf234e2a11cb8918069cc0f438"

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

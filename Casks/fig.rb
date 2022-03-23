cask "fig" do
  version "1.0.56,416"
  sha256 "a90a7154f12739b267a56c7374513feb52b1d4bed1694530aecc610684197e54"

  url "https://versions.withfig.com/fig%20#{version.csv.second}.dmg",
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

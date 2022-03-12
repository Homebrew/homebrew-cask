cask "fig" do
  version "1.0.55,383"
  sha256 "c4ab58b7f7f529d7fae4ed996c86921cc9c940ccbaf2ae8ddc24d28db9945678"

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
  binary "#{appdir}/Fig.app/MacOS/fig-darwin-universal", target: "fig"

  uninstall script:
                       {
                         executable: "#{appdir}/Fig.app/MacOS/fig-darwin-universal",
                         args:       ["app", "uninstall"],
                       },
            launchctl:
                       [
                         "io.fig.launcher",
                         "io.fig.uninstall",
                         "io.fig.dotfiles-daemon",
                       ],
            quit:
                       [
                         "com.mschrage.fig",
                         "io.fig.input-method.cursor",
                       ]

  zap trash: [
    "~/.fig",
    "~/.fig.dotfiles.bak",
    "~/Library/Application Support/com.mschrage.fig",
    "~/Library/Caches/com.mschrage.fig",
    "~/Library/Caches/fig",
    "~/Library/Preferences/com.mschrage.fig.*",
    "~/Library/WebKit/com.mschrage.fig",
    "~/Library/Application Support/fig",
  ]

  caveats <<~EOS
    Please launch the Fig application to finish setup...
  EOS
end

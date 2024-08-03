cask "fig" do
  version "2.19.0"
  sha256 "6f0caf57e1251ca06c315c23957734b5c9246fa5af8f1424d5836054ebdd6514"

  url "https://repo.fig.io/generic/stable/asset/#{version}/universal/fig.dmg"
  name "fig"
  desc "Reimagine your terminal"
  homepage "https://fig.io/"

  deprecate! date: "2024-08-03", because: :discontinued

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Fig.app"
  binary "#{appdir}/Fig.app/Contents/MacOS/fig-darwin-universal", target: "fig"

  uninstall launchctl: [
              "io.fig.dotfiles-daemon",
              "io.fig.launcher",
              "io.fig.uninstall",
            ],
            quit:      [
              "com.mschrage.fig",
              "io.fig.cursor",
            ],
            script:    {
              executable: "#{appdir}/Fig.app/Contents/MacOS/fig-darwin-universal",
              args:       ["_", "brew-uninstall"],
            }

  zap trash: [
    "~/.fig",
    "~/.fig.dotfiles.bak",
    "~/Library/Application Support/com.mschrage.fig",
    "~/Library/Application Support/fig",
    "~/Library/Caches/com.mschrage.fig",
    "~/Library/Caches/fig",
    "~/Library/HTTPStorages/com.mschrage.fig",
    "~/Library/Preferences/com.mschrage.fig.*",
    "~/Library/WebKit/com.mschrage.fig",
  ]

  caveats <<~EOS
    Please launch the Fig application to finish setup.
  EOS
end

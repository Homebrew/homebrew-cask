cask "fig" do
  version "2.17.1"
  sha256 "c6d1a4113a82055f3efcff8417a8a74e6835bb4a46d0937bad301e7e27db4f46"

  url "https://repo.fig.io/generic/stable/asset/#{version}/universal/fig.dmg"
  name "fig"
  desc "Reimagine your terminal"
  homepage "https://fig.io/"

  livecheck do
    url "https://repo.fig.io/generic/stable/index.json"
    strategy :json do |json|
      json["hints"]["livecheck"]
    end
  end

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

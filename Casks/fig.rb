cask "fig" do
  version "2.7.7"
  sha256 "7b7e448df47e507b60584ccf917ed01e7a41a740bc78e61835c2e396b5c4e94b"

  url "https://repo.fig.io/generic/stable/asset/#{version}/universal/fig.dmg"
  name "fig"
  desc "Reimagine your terminal"
  homepage "https://fig.io/"

  livecheck do
    url "https://repo.fig.io/generic/stable/index.json"
    strategy :page_match do |page|
      JSON.parse(page)["hints"]["livecheck"]
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Fig.app"
  binary "#{appdir}/Fig.app/Contents/MacOS/fig-darwin-universal", target: "fig"

  uninstall script: {
      executable: "#{appdir}/Fig.app/Contents/MacOS/fig-darwin-universal",
      args: ["_", "brew-uninstall"],
    },
    launchctl: [
      "io.fig.launcher",
      "io.fig.uninstall",
      "io.fig.dotfiles-daemon",
    ],
    quit: [
      "com.mschrage.fig",
      "io.fig.cursor",
    ]

  zap script: {
      executable: "#{appdir}/Fig.app/Contents/MacOS/fig-darwin-universal",
      args: ["_", "brew-uninstall", "--zap"],
    },
    trash: [
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
    Please launch the Fig application to finish setup...
  EOS
end

cask "fig" do
  version "1.0.49"
  sha256 :no_check

  url "http://versions.withfig.com/fig@latest.dmg",
      verified: "versions.withfig.com"
  name "fig"
  desc "Reimagine your terminal"
  homepage "https://fig.io/"

  livecheck do
    url "https://versions.withfig.com/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "Fig.app"

  uninstall script:
                        {
                          executable: "~/.fig/tools/uninstall-script.sh",
                          sudo:       false,
                        },
            quit:       ["com.mschrage.fig"],
            login_item: ["Fig"]

  zap trash: [
    "~/Library/Application Support/com.mschrage.fig",
    "~/Library/Caches/com.mschrage.fig",
    "~/Library/Preferences/com.mschrage.fig.plist",
  ]
end

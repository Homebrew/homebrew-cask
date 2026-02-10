cask "biglybt" do
  arch arm: "Silicon", intel: "Intel"

  version "4.0.0.0"
  sha256 arm:   "f8664211a4f7868b608e906c2162877e8e74165058ff0e4555684e53447869c1",
         intel: "90d328ebe577bdd4db979996de7071ee24902bbc2412c67cf513d97f9c8bbbd3"

  url "https://github.com/BiglySoftware/BiglyBT/releases/download/v#{version}/GitHub_BiglyBT_Mac_#{arch}_Installer.dmg",
      verified: "github.com/BiglySoftware/BiglyBT/"
  name "biglybt"
  desc "Bittorrent client based on the Azureus open source project"
  homepage "https://www.biglybt.com/"

  auto_updates true

  installer script: {
    executable:   "BiglyBT Installer.app/Contents/MacOS/JavaApplicationStub",
    args:         [
      "-dir", "#{appdir}/BiglyBT",
      "-q",
      "-Dinstall4j.suppressStdout=true",
      "-Dinstall4j.debug=false",
      "-VcreateDesktopLinkAction$Boolean=false",
      "-VaddToDockAction$Boolean=false"
    ],
    print_stderr: false,
    sudo:         true,
  }

  uninstall delete: "#{appdir}/BiglyBT"

  zap trash: [
    "~/Library/Application Support/BiglyBT",
    "~/Library/Preferences/com.biglybt.plist",
    "~/Library/Saved Application State/com.biglybt.savedState",
  ]

  caveats do
    depends_on_java "8+"
  end
end

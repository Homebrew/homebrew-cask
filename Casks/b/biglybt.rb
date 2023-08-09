cask "biglybt" do
  arch arm: "Silicon", intel: "Intel"

  version "3.4.0.0"
  sha256 arm:   "358897532654b18f21b5395afe8af03062d16a89173f038f208c11137e95dd45",
         intel: "eccef5e5955195a1e2103bbd76ca34b95addfa919c720f969a8d54f08ed8c6fb"

  url "https://github.com/BiglySoftware/BiglyBT/releases/download/v#{version}/GitHub_BiglyBT_Mac_#{arch}_Installer.dmg",
      verified: "github.com/BiglySoftware/BiglyBT/"
  name "biglybt"
  desc "Bittorrent client based on the Azureus open source project"
  homepage "https://www.biglybt.com/"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  preflight do
    system_command "#{staged_path}/BiglyBT Installer.app/Contents/MacOS/JavaApplicationStub",
                   args:         [
                     "-dir", "#{appdir}/BiglyBT",
                     "-q",
                     "-Dinstall4j.suppressStdout=true",
                     "-Dinstall4j.debug=false",
                     "-VcreateDesktopLinkAction$Boolean=false",
                     "-VaddToDockAction$Boolean=false"
                   ],
                   print_stderr: false,
                   sudo:         true
  end

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

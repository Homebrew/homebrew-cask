cask "biglybt" do
  arch arm: "Silicon", intel: "Intel"

  version "3.5.0.0"
  sha256 arm:   "45b50b8452fb00b13eefbd5d84dadf2d3fb65cf5f8bf3540205a1ae68da3da3c",
         intel: "479f737d015ecca811c21e120f89264f4815d251c895b88bf5206249a3dc41b7"

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

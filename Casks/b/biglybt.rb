cask "biglybt" do
  version "4.2.0.0"
  sha256 "8556c60ca8d85891f54a79fe0bac6166caf1ea4889fbb84c2920b2b9dd47b49c"

  url "https://github.com/BiglySoftware/BiglyBT/releases/download/v#{version}/GitHub_BiglyBT_Mac_Universal_Installer.dmg"
  name "biglybt"
  desc "Bittorrent client based on the Azureus open source project"
  homepage "https://www.biglybt.com/"

  auto_updates true
  depends_on :macos

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

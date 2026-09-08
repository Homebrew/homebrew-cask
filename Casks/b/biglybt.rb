cask "biglybt" do
  version "4.1.0.0"
  sha256 "2e20642b6fda147ee7fd3e523235359355a07e753e5c7961e27d005a72753b0d"

  url "https://github.com/BiglySoftware/BiglyBT/releases/download/v#{version}/GitHub_BiglyBT_Mac_Universal_Installer.dmg"
  name "biglybt"
  desc "Bittorrent client based on the Azureus open source project"
  homepage "https://www.biglybt.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

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

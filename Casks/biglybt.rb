cask "biglybt" do
  version "2.9.0.0"
  sha256 "efab84c5c1887dc1ece21b8e9b98be70556f74b4a6c62a0d3cb5dabf3695e54c"

  url "https://github.com/BiglySoftware/BiglyBT/releases/download/v#{version}/GitHub_BiglyBT_Installer.dmg",
      verified: "github.com/BiglySoftware/BiglyBT/"
  name "biglybt"
  desc "Bittorrent client based on the Azureus open source project"
  homepage "https://www.biglybt.com/"

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
                   print_stderr: false
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

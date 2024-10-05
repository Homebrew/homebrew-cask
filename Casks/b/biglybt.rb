cask "biglybt" do
  arch arm: "Silicon", intel: "Intel"
  file_prefix = on_arch_conditional intel: "GitHub_"

  version "3.7.0.0"
  sha256 arm:   "0ac55a367d46bd3cdd801adafda69706df0049058424dd6792033b9184a49810",
         intel: "a8c18234ba960b0501fc93d5050c2382f4d759c934875f84efff09bfb72055d1"

  url "https://github.com/BiglySoftware/BiglyBT/releases/download/v#{version}/#{file_prefix}BiglyBT_Mac_#{arch}_Installer.dmg",
      verified: "github.com/BiglySoftware/BiglyBT/"
  name "biglybt"
  desc "Bittorrent client based on the Azureus open source project"
  homepage "https://www.biglybt.com/"

  auto_updates true
  depends_on macos: ">= :el_capitan"

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

cask "biglybt" do
  arch arm: "Silicon", intel: "Intel"

  version "3.8.0.2"
  sha256 arm:   "37a4acf81be017786685a6007424a9f4b63c72910b0e2ae74f3f3741051eafe4",
         intel: "6eb4b47cf9bb114da257c4e9be8cca87a95afb63e5268822f2977cbdf2d3b636"

  url "https://github.com/BiglySoftware/BiglyBT/releases/download/v#{version}/GitHub_BiglyBT_Mac_#{arch}_Installer.dmg",
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

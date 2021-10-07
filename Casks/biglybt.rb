cask "biglybt" do
  version :latest
  sha256 :no_check

  url "https://github.com/BiglySoftware/BiglyBT/releases/download/v2.8.0.0/GitHub_BiglyBT_Installer.dmg",
      user_agent: :fake
  name "biglybt"
  desc "Feature-filled Bittorrent client based on the Azureus open source project"
  homepage "https://github.com/BiglySoftware/BiglyBT"

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

  uninstall delete: [
    "#{appdir}/BiglyBT",
  ]

  caveats do
    depends_on_java "8"
  end
end

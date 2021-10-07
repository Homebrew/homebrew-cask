cask "biglybt" do
  version "2.8.0.0"
  sha256 "e680fc2532e2bf56b664e32453c83422f98fd89f9f120471e39e93c768366068"

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

  caveats do
    depends_on_java "8+"
  end
end

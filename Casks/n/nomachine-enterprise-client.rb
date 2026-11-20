cask "nomachine-enterprise-client" do
  version "10.1.7_1"
  sha256 "31f6bd4924bfe77f272952c0a6fddeb4bc19dde4b0d69a60feba15e3066df358"

  url "https://download.nomachine.com/download/#{version.major_minor}/MacOSX/nomachine-enterprise-client_#{version}.dmg"
  name "NoMachine Enterprise Client"
  desc "Remote desktop software"
  homepage "https://www.nomachine.com/"

  livecheck do
    url "https://download.nomachine.com/download/?id=7&platform=mac"
    regex(/nomachine[._-]enterprise[._-]client[._-]?v?(\d+(?:[._]\d+)+)\.dmg/i)
  end

  depends_on :macos

  pkg "NoMachine.pkg"

  # A launchctl job ordinarily manages uninstall once the app bundle is removed
  # To ensure it ran, verify if /Library/Application Support/NoMachine/nxuninstall.sh no longer exists
  uninstall launchctl: [
              "com.nomachine.launchconf",
              "com.nomachine.uninstall",
              "com.nomachine.uninstallAgent",
            ],
            pkgutil:   [
              "com.nomachine.*",
              "com.nomachine.nomachine.NoMachine*.pkg",
            ],
            delete:    "/Applications/NoMachine.app"

  zap trash: [
        "/Library/Application Support/NoMachine",
        "~/.nx",
        "~/Library/Preferences/com.nomachine.nxdock.plist",
      ],
      rmdir: "~/Documents/NoMachine"
end

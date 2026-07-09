cask "nomachine-enterprise-client" do
  version "9.8.2_1"
  sha256 "9d32efc99f1371bd5410f0c93f29254917f136fe6cca0528a6c1b7f0bd4a5a3a"

  url "https://download.nomachine.com/download/#{version.major_minor}/MacOSX/nomachine-enterprise-client_#{version}.dmg"
  name "NoMachine Enterprise Client"
  desc "Remote desktop software"
  homepage "https://www.nomachine.com/"

  # We couldn't find a checkable source of Enterprise-specific version
  # information but it seems to generally follow the `nomachine` version, so
  # aligning the versions is better than nothing.
  livecheck do
    cask "nomachine"
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

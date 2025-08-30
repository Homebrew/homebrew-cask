cask "openforis-collect" do
  version "4.0.101"
  sha256 "12a50bc37d0b8760175ac04c9b6a4d2cbefbe887405019d03598f40ab26121f3"

  url "https://search.maven.org/remotecontent?filepath=org/openforis/collect/collect-installer/#{version}/collect-installer-#{version}-osx.dmg",
      verified: "search.maven.org/"
  name "Open Foris Collect"
  desc "Data management for field-based inventories"
  homepage "https://openforis.org/solutions/collect/"

  livecheck do
    url "https://github.com/openforis/collect"
  end

  rename "OpenForisCollect-*-osx-installer.app", "OpenForisCollect-osx-installer.app"

  installer script: {
    executable: "#{staged_path}/OpenForisCollect-osx-installer.app/Contents/MacOS/#{arch}",
    args:       [
      "--mode", "unattended"
    ],
  }

  uninstall quit:   "OpenForisCollect-launcher.app",
            signal: [
              ["TERM", "OpenForisCollect-launcher.app"],
            ],
            script: {
              executable: "~/OpenForis/Collect/uninstall.app/Contents/MacOS/#{arch}",
              args:       ["--mode", "unattended"],
            }

  zap trash: "~/OpenForis/Collect"
end

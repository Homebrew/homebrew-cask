cask "openforis-collect" do
  version "4.0.109"
  sha256 "1b1cd0eb74c1663c259583273c44cdf308cf4998ad769acce864cc9947739813"

  url "https://search.maven.org/remotecontent?filepath=org/openforis/collect/collect-installer/#{version}/collect-installer-#{version}-osx.dmg",
      verified: "search.maven.org/"
  name "Open Foris Collect"
  desc "Data management for field-based inventories"
  homepage "https://openforis.org/solutions/collect/"

  livecheck do
    url "https://search.maven.org/remotecontent?filepath=org/openforis/collect/collect-installer/maven-metadata.xml"
    regex(%r{<version>v?(\d+(?:\.\d+)+)</version>}i)
  end

  depends_on :macos

  rename "OpenForisCollect-*-osx-installer.app", "OpenForisCollect-osx-installer.app"

  installer script: {
    executable: "#{staged_path}/OpenForisCollect-osx-installer.app/Contents/MacOS/osx-x86_64",
    args:       [
      "--mode", "unattended"
    ],
  }

  uninstall quit:   "OpenForisCollect-launcher.app",
            signal: [
              ["TERM", "OpenForisCollect-launcher.app"],
            ],
            script: {
              executable: "~/OpenForis/Collect/uninstall.app/Contents/MacOS/osx-x86_64",
              args:       ["--mode", "unattended"],
            }

  zap trash: "~/OpenForis/Collect"
end

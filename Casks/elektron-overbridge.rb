cask "elektron-overbridge" do
  version "2.5.1"
  sha256 "a0a32be4cfe38da9c58fbe07c5b67671d97d3a5d0fa01c3b9a5d67f3c855ab1c"

  url "https://cdn.www.elektron.se/media/downloads/overbridge/Elektron_Overbridge_#{version}.dmg"
  name "Overbridge"
  desc "Integrate Elektron hardware into music software"
  homepage "https://www.elektron.se/overbridge/"

  livecheck do
    url "https://www.elektron.se/us/download-support-overbridge-new"
    regex(/Elektron[._-]?Overbridge[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  pkg "Elektron Overbridge Installer #{version}.pkg"

  uninstall quit:      "se.elektron.OverbridgeEngine",
            pkgutil:   "se.elektron.overbridge.*",
            launchctl: [
              "se.elektron.overbridge.engine",
              "asp.se.elektron.overbridge.coreaudio2",
            ],
            delete:    "/Applications/Elektron"
end

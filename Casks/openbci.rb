cask "openbci" do
  version "5.0.9"
  sha256 "216fc1d47ebb5b158d7bbe7f71caf78f754d4a41c8cc9b5914bd2b01afd0cfcc"

  url "https://github.com/OpenBCI/OpenBCI_GUI/releases/download/v#{version}/openbcigui_v#{version}_2021-11-06_00-16-07_macosx.dmg",
      verified: "github.com/OpenBCI/OpenBCI_GUI"
  name "OpenBCI"
  desc "Display readings from the OpenBCI Cyton and Ganglion"
  homepage "https://openbci.com/"

  app "OpenBCI_GUI.app"
end

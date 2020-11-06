cask "muruslogsvisualizer" do
  version "1.4.4"
  sha256 "fa0629b87cb79c011fa8553a7ba24912d372cd418e26cbff170b8e1c3cf4b65c"

  url "https://www.murusfirewall.com/downloads/muruslogsvisualizer-#{version}.zip"
  name "Murus Logs Visualizer"
  homepage "https://www.murusfirewall.com/"

  app "MurusLogsVisualizer.app"

  uninstall quit: "it.murus.MurusLogsVisualizer"

  zap trash: "~/Library/Preferences/it.murus.MurusLogsVisualizer.plist"
end

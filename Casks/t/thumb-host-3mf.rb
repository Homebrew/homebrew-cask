cask "anybar" do
  version "1.4"
  sha256 "ed18f842c065fc1bf92ffb1d8111647efb28c1d56ba457017a5c81e22bc3f4c2"
       
  url "https://github.com/DavidPhillipOster/ThumbHost3mf/releases/download/#{version}/ThumbHost3mfVersion#{version}.zip"
  name "ThumbHost3mf"
  desc "Menu bar status indicator"
  homepage "A macOS app that hosts a thumbnail provider that makes the Finder displays the thumbnails built in to some .gcode, .bgcode, and .3mf files."

  app "ThumbHost3mf.app"
end

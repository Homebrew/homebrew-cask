cask "cmdtap" do
  version "1.9.4"
  sha256 "7e31179f044f3a834ea51daf250ad5085d6c8ea4bbabb8c1b193cff103d3f5ea"

  url "https://www.yingdev.com/Content/Projects/CmdTap/Release/#{version}/CmdTap.zip"
  name "CmdTap"
  desc "Adds other functions to Task Switcher"
  homepage "https://www.yingdev.com/projects/cmdtap"

  deprecate! date: "2024-10-14", because: :unmaintained
  disable! date: "2025-10-14", because: :unmaintained

  app "CmdTap.app"

  caveats do
    requires_rosetta
  end
end

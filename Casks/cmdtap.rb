cask "cmdtap" do
  version "1.9.4"
  sha256 "7e31179f044f3a834ea51daf250ad5085d6c8ea4bbabb8c1b193cff103d3f5ea"

  url "https://www.yingdev.com/Content/Projects/CmdTap/Release/#{version}/CmdTap.zip"
  appcast "https://www.yingdev.com/projects/cmdtap"
  name "CmdTap"
  homepage "https://www.yingdev.com/projects/cmdtap"

  app "CmdTap.app"
end

cask "cmdtap" do
  version "1.9.4"
  sha256 "7e31179f044f3a834ea51daf250ad5085d6c8ea4bbabb8c1b193cff103d3f5ea"

  url "https://www.yingdev.com/Content/Projects/CmdTap/Release/#{version}/CmdTap.zip"
  name "CmdTap"
  desc "Adds other functions to Task Switcher"
  homepage "https://www.yingdev.com/projects/cmdtap"

  livecheck do
    url "https://www.yingdev.com/projects/cmdtap"
    regex(%r{href=.*?/(\d+(?:\.\d+)+)/CmdTap\.zip}i)
  end

  app "CmdTap.app"
end

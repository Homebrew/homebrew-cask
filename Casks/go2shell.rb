cask "go2shell" do
  version "2.5"
  sha256 :no_check

  url "https://zipzapmac.com/download/Go2Shell"
  name "Go2Shell"
  desc "Opens a terminal window to the current directory in Finder"
  homepage "https://zipzapmac.com/go2shell"

  livecheck do
    url "http://appcast.zipzapmac.com/go2shell.xml"
    strategy :sparkle, &:short_version
  end

  app "Go2Shell.app"
end

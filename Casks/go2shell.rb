cask "go2shell" do
  version "2.5,25"
  sha256 :no_check

  url "https://zipzapmac.com/download/Go2Shell"
  name "Go2Shell"
  homepage "https://zipzapmac.com/go2shell"

  livecheck do
    url "http://appcast.zipzapmac.com/go2shell.xml"
    strategy :sparkle
  end

  app "Go2Shell.app"
end

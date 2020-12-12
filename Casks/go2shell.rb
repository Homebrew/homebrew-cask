cask "go2shell" do
  version "2.5,25"
  sha256 :no_check

  url "https://zipzapmac.com/download/Go2Shell"
  appcast "http://appcast.zipzapmac.com/go2shell.xml"
  name "Go2Shell"
  homepage "https://zipzapmac.com/go2shell"

  app "Go2Shell.app"
end

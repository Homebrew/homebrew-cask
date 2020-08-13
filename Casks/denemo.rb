cask "denemo" do
  version "2.2"
  sha256 "6ec66279be560e6e997b1108ae9ed61e6c37c36a350fbd99cd3dded8e2cfbe5f"

  url "http://denemo.org/downloads/denemo-#{version}-darwin-x64.tar.bz2"
  appcast "https://ftp.gnu.org/gnu/denemo/?C=M;O=D"
  name "Denemo"
  homepage "http://denemo.org/"

  app "Denemo.app"
end

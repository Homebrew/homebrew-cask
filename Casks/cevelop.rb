cask "cevelop" do
  version "1.14.1-202002280945"
  sha256 "f3075e6655fac42f6eca6915e348096f24d6f500969932829f52ec978f963924"

  url "https://www.cevelop.com/cevelop/downloads/cevelop-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast "https://www.cevelop.com/download/"
  name "Cevelop"
  homepage "https://www.cevelop.com/"

  app "Cevelop.app"
end

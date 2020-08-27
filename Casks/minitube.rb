cask "minitube" do
  version "3.5.1"
  sha256 "d45c7930400eb542bff71655e6c651f721bee70ec356edcbbc78e9b1fd4c6d7d"

  url "https://flavio.tordini.org/files/minitube/minitube.dmg"
  appcast "https://flavio.tordini.org/minitube-ws/appcast.xml"
  name "Minitube"
  homepage "https://flavio.tordini.org/minitube"

  depends_on macos: ">= :sierra"

  app "Minitube.app"
end

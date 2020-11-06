cask "minitube" do
  version "3.6.5"
  sha256 "6d8132be59daf14e480c9a0503f0b3f3dd9f77d7918220963bc962909a229c16"

  url "https://flavio.tordini.org/files/minitube/minitube.dmg"
  appcast "https://flavio.tordini.org/minitube-ws/appcast.xml"
  name "Minitube"
  desc "YouTube application"
  homepage "https://flavio.tordini.org/minitube"

  depends_on macos: ">= :sierra"

  app "Minitube.app"
end

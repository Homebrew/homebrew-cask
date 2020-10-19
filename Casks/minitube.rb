cask "minitube" do
  version "3.6.3"
  sha256 "69943286546bf6d8a4bcab2bcdbc0ec6a0f30476354e232f6595bb493e05a22e"

  url "https://flavio.tordini.org/files/minitube/minitube.dmg"
  appcast "https://flavio.tordini.org/minitube-ws/appcast.xml"
  name "Minitube"
  desc "YouTube application"
  homepage "https://flavio.tordini.org/minitube"

  depends_on macos: ">= :sierra"

  app "Minitube.app"
end

cask "minitube" do
  version "3.6.2"
  sha256 "e834d7e9f3ec9e1bc03da3751400ab4e8eb0185940ca024c0d74ba788e8e8a55"

  url "https://flavio.tordini.org/files/minitube/minitube.dmg"
  appcast "https://flavio.tordini.org/minitube-ws/appcast.xml"
  name "Minitube"
  desc "YouTube application"
  homepage "https://flavio.tordini.org/minitube"

  depends_on macos: ">= :sierra"

  app "Minitube.app"
end

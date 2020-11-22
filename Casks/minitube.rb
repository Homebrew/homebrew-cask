cask "minitube" do
  version "3.6.6"
  sha256 "d107ceb08b56f8f654903bab119809c257f27702640e129fce16bba3f54cb4ad"

  url "https://flavio.tordini.org/files/minitube/minitube.dmg"
  appcast "https://flavio.tordini.org/minitube-ws/appcast.xml"
  name "Minitube"
  desc "YouTube application"
  homepage "https://flavio.tordini.org/minitube"

  depends_on macos: ">= :sierra"

  app "Minitube.app"
end

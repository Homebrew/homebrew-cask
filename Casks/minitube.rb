cask "minitube" do
  version "3.6"
  sha256 "be3c876a41c8fa3e4480262aa1ff535561cb76d289c4ad41b706e544c310bf49"

  url "https://flavio.tordini.org/files/minitube/minitube.dmg"
  appcast "https://flavio.tordini.org/minitube-ws/appcast.xml"
  name "Minitube"
  homepage "https://flavio.tordini.org/minitube"

  depends_on macos: ">= :sierra"

  app "Minitube.app"
end

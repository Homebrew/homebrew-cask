cask "minitube" do
  version "3.5"
  sha256 "70a4f07b47aebe038662d5c1ffa6d0d74674fc8b3285700b74fb675e6ff02ebf"

  url "https://flavio.tordini.org/files/minitube/minitube.dmg"
  appcast "https://flavio.tordini.org/minitube-ws/appcast.xml"
  name "Minitube"
  homepage "https://flavio.tordini.org/minitube"

  depends_on macos: ">= :sierra"

  app "Minitube.app"
end

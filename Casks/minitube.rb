cask "minitube" do
  version "3.6.6"
  sha256 "edc1ed6f63c4eeecea13ef9624e94eab52930486faafcdc96e5e487e61ed5ada"

  url "https://flavio.tordini.org/files/minitube/minitube.dmg"
  appcast "https://flavio.tordini.org/minitube-ws/appcast.xml"
  name "Minitube"
  desc "YouTube application"
  homepage "https://flavio.tordini.org/minitube"

  depends_on macos: ">= :sierra"

  app "Minitube.app"
end

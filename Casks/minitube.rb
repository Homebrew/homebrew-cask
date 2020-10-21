cask "minitube" do
  version "3.6.4"
  sha256 "86efcb6a9d05e0bf669cec894e4b27fda1d6f21824f276e10dc1b2964b9c85db"

  url "https://flavio.tordini.org/files/minitube/minitube.dmg"
  appcast "https://flavio.tordini.org/minitube-ws/appcast.xml"
  name "Minitube"
  desc "YouTube application"
  homepage "https://flavio.tordini.org/minitube"

  depends_on macos: ">= :sierra"

  app "Minitube.app"
end

cask "minitube" do
  version "3.9,2021.0621.230951"
  sha256 :no_check

  url "https://flavio.tordini.org/files/minitube/minitube.dmg"
  name "Minitube"
  desc "YouTube application"
  homepage "https://flavio.tordini.org/minitube"

  livecheck do
    url "https://flavio.tordini.org/minitube-ws/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Minitube.app"
end

cask "minitube" do
  version "3.6.1"
  sha256 "0efbdbef43d9745caf92bd74e9a41d90a6a9093b96fd5af67542877567e25739"

  url "https://flavio.tordini.org/files/minitube/minitube.dmg"
  appcast "https://flavio.tordini.org/minitube-ws/appcast.xml"
  name "Minitube"
  desc "YouTube application"
  homepage "https://flavio.tordini.org/minitube"

  depends_on macos: ">= :sierra"

  app "Minitube.app"
end

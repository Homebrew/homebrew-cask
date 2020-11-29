cask "minitube" do
  version "3.6.7"
  sha256 "b766b775f526663fef52feded80d64e4b00c2a309a1a04957544f52262b73b82"

  url "https://flavio.tordini.org/files/minitube/minitube.dmg"
  appcast "https://flavio.tordini.org/minitube-ws/appcast.xml"
  name "Minitube"
  desc "YouTube application"
  homepage "https://flavio.tordini.org/minitube"

  depends_on macos: ">= :sierra"

  app "Minitube.app"
end

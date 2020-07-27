cask "squidman" do
  version "4.1"
  sha256 "26ec3c2cd84ae7180b90205d55443f9c52966bb0f7770b05c9c80a1bdec92187"

  url "https://squidman.net/resources/downloads/SquidMan#{version}.dmg"
  appcast "https://squidman.net/squidman/releasenotes/index.html"
  name "SquidMan"
  homepage "https://squidman.net/squidman/"

  app "SquidMan.app"

  zap trash: "/usr/local/squid"

  caveats do
    files_in_usr_local
  end
end

cask "squidman" do
  version "4.2"
  sha256 "281e73b703b148448862fd3be8d31966f4c95339e4227d9ffc67ae698b2c9ef2"

  url "https://squidman.net/resources/downloads/SquidMan#{version}.dmg"
  name "SquidMan"
  desc "Manage and install Squid proxy cache"
  homepage "https://squidman.net/squidman/"

  livecheck do
    url "https://squidman.net/squidman/releasenotes/index.html"
    regex(/Version\s*?(\d+(?:\.\d+)+).*?released/i)
  end

  app "SquidMan.app"

  zap trash: "/usr/local/squid"

  caveats do
    files_in_usr_local
  end
end

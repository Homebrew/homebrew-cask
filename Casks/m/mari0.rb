cask "mari0" do
  version "1006"
  sha256 "da280f99c744cb161ca4a731a5442a72116f92a4170bf94fd0c9d52557e38727"

  url "https://stabyourself.net/dl.php?file=mari0-#{version}/mari0-osx.zip"
  name "Mari0"
  desc "Recreation of Super Mario Bros"
  homepage "https://stabyourself.net/mari0/"

  livecheck do
    url "https://stabyourself.net/mari0/#download"
    regex(/mari0[._-]v?(\d+)/i)
  end

  app "Mari0.app"
end

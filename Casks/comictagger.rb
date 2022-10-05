cask "comictagger" do
  version "1.5.1"
  sha256 "666da6b7f7a970c7a914fdfcc1aca2d4b8bc6386b0c1cf16b395ef46efa54ea9"

  url "https://github.com/davide-romanini/comictagger/releases/download/#{version}/ComicTagger-#{version}-osx-10.15.7-x86_64.app.zip"
  name "ComicTagger"
  desc "Metadata editor for digital comics"
  homepage "https://github.com/davide-romanini/comictagger"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ComicTagger.app"
end

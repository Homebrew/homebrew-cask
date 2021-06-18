cask "comictagger" do
  version "1.2.3"
  sha256 "c42168aa74167ea41c5ece2bd5001b091fab6a6878e7ccc6c988876bb1494d1c"

  url "https://github.com/davide-romanini/comictagger/releases/download/#{version}/ComicTagger-#{version}-osx-10.12.6-x86_64.app.zip"
  name "ComicTagger"
  homepage "https://github.com/davide-romanini/comictagger"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ComicTagger.app"
end

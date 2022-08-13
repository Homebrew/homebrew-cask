cask "comictagger" do
  version "1.4.6"
  sha256 "71998f14c1a4d95447b7aecfcdeca6276a09df2dc442f99ba85caaedc9e065ac"

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

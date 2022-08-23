cask "comictagger" do
  version "1.4.8"
  sha256 "a252076630bcebd02e9a4760b624b351b02dfba44613d4d40b39a4b81caef6a9"

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

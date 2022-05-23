cask "comictagger" do
  version "1.4.3"
  sha256 "3f3ab89c748c7cbf99aef0d563021a7a1bb1d492f34d28c5caef7539a313ea4e"

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

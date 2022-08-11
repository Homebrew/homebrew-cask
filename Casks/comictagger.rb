cask "comictagger" do
  version "1.4.5"
  sha256 "8bf80a097a28ce1a37c7aaa99cdd27571553cc3fed30bebb8b236ee715d78411"

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

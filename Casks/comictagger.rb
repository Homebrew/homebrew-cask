cask "comictagger" do
  version "1.5.2"
  sha256 "4947ff19329bb6049dd8bdf40b2a29572033cdbdf0d9486eba2c9ac52b4ef62f"

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

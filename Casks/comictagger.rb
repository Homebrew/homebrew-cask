cask "comictagger" do
  version "1.3.1"
  sha256 "c1cd0fed7f4144ecdbd6cda0975c5070d905d87b0edc4d44149bb7f62c9be937"

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

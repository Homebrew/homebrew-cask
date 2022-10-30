cask "comictagger" do
  version "1.5.4"
  sha256 "54aa48e325eed22c53748fd98243a045b0f2a69e3fbcca80ff05f95ca1c5eec3"

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

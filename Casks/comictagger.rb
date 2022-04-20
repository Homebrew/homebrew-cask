cask "comictagger" do
  version "1.4.2"
  sha256 "16b9dc2bfd375242d6b68a7174fdf3fa466f9cfba8de716154450492fba9a13b"

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

cask "comictagger" do
  version "1.5.0"
  sha256 "ba53d7b67232a5238a6802353b8d8a933c8a1d85ce85dfb0e04bb591ded02453"

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

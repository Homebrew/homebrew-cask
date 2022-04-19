cask "comictagger" do
  version "1.4.1"
  sha256 "2a24683f6f7384644cfb174ad174302c5c394582437c6975017abad67f9084cc"

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

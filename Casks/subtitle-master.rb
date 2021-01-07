cask "subtitle-master" do
  version "2.0.1"
  sha256 "8936495ef4aefe9bf59c28dd4d5a92574c194062067c318667e3f55428245304"

  url "https://github.com/subtitle-master/subtitlemaster/releases/download/v#{version}-SNAPSHOT/Subtitle.Master-osx-v#{version}-SNAPSHOT.zip"
  name "Subtitle Master"
  homepage "https://github.com/subtitle-master/subtitlemaster/releases"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/Subtitle\.Master-osx-v?(\d+(?:\.\d+)*)-SNAPSHOT\.zip}i)
  end

  app "Subtitle Master.app"
end

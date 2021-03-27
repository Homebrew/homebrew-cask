cask "openframeworks" do
  version "0.11.1"
  sha256 "815d578512ee328aaa9592951298f88716abb6a7e4bbcb4993aa755f477ed004"

  url "https://openframeworks.cc/versions/v#{version}/of_v#{version}_osx_release.zip"
  name "Openframeworks"
  homepage "https://openframeworks.cc/"

  livecheck do
    url "https://github.com/openframeworks/openFrameworks"
    strategy :github_latest
  end

  suite "of_v#{version}_osx_release"
end

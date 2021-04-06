cask "openframeworks" do
  version "0.11.2"
  sha256 "cd618d058c1fe4ef90bfd42fe1149e1ecfd0504881c031e46e8e1298be96f6d7"

  url "https://openframeworks.cc/versions/v#{version}/of_v#{version}_osx_release.zip"
  name "Openframeworks"
  desc "C++ toolkit for creative coding"
  homepage "https://openframeworks.cc/"

  livecheck do
    url "https://github.com/openframeworks/openFrameworks"
    strategy :github_latest
  end

  suite "of_v#{version}_osx_release"
end

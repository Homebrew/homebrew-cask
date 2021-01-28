cask "openframeworks" do
  version "0.11.0"
  sha256 "4701be5c3cb480019ceb1ef6d936e29a958f1ef1fd980752f428babee89a5e25"

  url "https://openframeworks.cc/versions/v#{version}/of_v#{version}_osx_release.zip"
  name "Openframeworks"
  homepage "https://openframeworks.cc/"

  livecheck do
    url "https://github.com/openframeworks/openFrameworks"
    strategy :github_latest
  end

  suite "of_v#{version}_osx_release"
end

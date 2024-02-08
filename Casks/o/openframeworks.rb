cask "openframeworks" do
  version "0.12.0"
  sha256 "c676540bb6051c4f15cd2a32d0b770ff274873df93e00fe7d40c10f218077a4a"

  url "https://github.com/openframeworks/openFrameworks/releases/download/#{version}/of_v#{version}_osx_release.zip",
      verified: "github.com/openframeworks/openFrameworks/"
  name "Openframeworks"
  desc "C++ toolkit for creative coding"
  homepage "https://openframeworks.cc/"

  livecheck do
    url :url
    strategy :github_latest
  end

  suite "of_v#{version}_osx_release"

  # No zap stanza required
end

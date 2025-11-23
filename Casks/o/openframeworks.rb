cask "openframeworks" do
  version "0.12.1"
  sha256 "170d24422e53bef30297f8154604f10343fae58f7a84d42b37d7d00350ac2192"

  url "https://github.com/openframeworks/openFrameworks/releases/download/#{version}/of_v#{version}_osx_release.tar.gz",
      verified: "github.com/openframeworks/openFrameworks/"
  name "Openframeworks"
  desc "C++ toolkit for creative coding"
  homepage "https://openframeworks.cc/"

  # Sometimes the "latest" release on GitHub is a `latest` tag that doesn't
  # correspond to a version. This checks the first-party download page, which
  # links to the newest versioned macOS file from GitHub, as this is lighter
  # than using the `GithubReleases` strategy to check multiple recent releases.
  livecheck do
    url "https://openframeworks.cc/download/"
    regex(/href=.*?of[._-]v?(\d+(?:\.\d+)+)[._-]osx[._-]release\.(?:t|zip)/i)
  end

  suite "of_v#{version}_osx_release"

  # No zap stanza required
end

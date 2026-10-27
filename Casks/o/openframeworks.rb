cask "openframeworks" do
  version "0.12.1"
  sha256 "e4a2dd6e75805320aac905f9f82f7b85e67a8b799137d47f35d40f7c4c195c9b"

  url "https://github.com/openframeworks/openFrameworks/releases/download/#{version}/of_v#{version}_osx_release.tar.gz"
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

  depends_on :macos

  suite "of_v#{version}_osx_release"

  zap :not_required
end

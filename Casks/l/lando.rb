cask "lando" do
  arch arm: "arm64", intel: "x64"

  version "3.21.0"
  sha256 arm:   "ef66b51d104fea703afaea806743da870ad8cfc66eb14559dba84add026e168a",
         intel: "a7ad7336a6bcf8ddd74c0615a119c71c0e4d3625b9f76afcb3af20cca322469b"

  url "https://github.com/lando/cli/releases/download/v#{version}/lando-macos-#{arch}-v#{version}",
      verified: "github.com/lando/cli/"
  name "Lando"
  desc "Local development environment and DevOps tool built on Docker"
  homepage "https://lando.dev/"

  # Upstream doesn't label all unstable releases (e.g. alpha, beta, rc) as
  # pre-release on GitHub, so the "latest" release is sometimes an unstable
  # version. Until this changes we have to use the `GithubReleases` strategy
  # with a regex to only match stable versions.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  conflicts_with cask: "lando@edge"
  depends_on cask: "docker"

  binary "lando-macos-#{arch}-v#{version}", target: "lando"

  zap trash: "~/.lando"
end

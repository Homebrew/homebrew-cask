cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.24"
  sha256 arm:   "57fef5e91dfc1df55f6912c3ea2e0ae77f8eef2447af28fd8ece369590402ff8",
         intel: "f51a76eba828f94f18f0563c33483819d617e58fc73e0113202958b190ca9300"

  url "https://github.com/blueprint-freespeech/ricochet-refresh/releases/download/v#{version}-release/ricochet-refresh-#{version}-macos-#{arch}.dmg",
      verified: "github.com/blueprint-freespeech/ricochet-refresh/"
  name "Ricochet Refresh"
  desc "Private and anonymous instant messaging over tor"
  homepage "https://www.ricochetrefresh.net/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[a-z]?)(?:[._-]release)?$/i)
    strategy :github_latest
  end

  app "Ricochet Refresh.app"

  zap trash: "~/Library/Application Support/Ricochet-Refresh"
end

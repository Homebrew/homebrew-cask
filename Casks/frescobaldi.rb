cask "frescobaldi" do
  arch arm: "arm64", intel: "x86_64"

  version "3.3.0"
  sha256 arm:   "53de57e3aef74170c617ce96e24b63343d4f4c11cdfcd98cc39e7233c6b168b7",
         intel: "82f4377c3c9e787a079cfe1cf269c7c3ba41bd933fba4fc4a60347aeb1ed32f0"

  url "https://github.com/frescobaldi/frescobaldi/releases/download/v#{version}/Frescobaldi-#{version}-#{arch}.dmg",
      verified: "github.com/frescobaldi/frescobaldi/"
  name "Frescobaldi"
  desc "LilyPond editor"
  homepage "https://frescobaldi.org/"

  # Some GitHub tags do not follow standard versioning pattern
  livecheck do
    url :url
    strategy :github_latest
  end

  app "Frescobaldi.app"

  zap trash: "~/Library/Preferences/org.frescobaldi.frescobaldi.plist"
end

cask "frescobaldi" do
  arch arm: "arm64", intel: "x86_64"

  version "3.3.0"
  sha256 arm:   "ff7074123b780929343958e7fe6654c5517ea6c875f6c89105620c5da302e791",
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

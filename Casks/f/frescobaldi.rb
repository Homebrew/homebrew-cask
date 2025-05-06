cask "frescobaldi" do
  arch intel: "-Intel"

  version "4.0.1"
  sha256 arm:   "f7c9848908b70b15d65a3fd4898661e274f4148cf62541ad5793ba360a4d50dc",
         intel: "03748da180bf82cfa6c2ef15f75fef11ad5f0cbe1e6ddd0c59c90f943d2e6b10"

  url "https://github.com/frescobaldi/frescobaldi/releases/download/v#{version}/Frescobaldi-#{version}#{arch}.dmg",
      verified: "github.com/frescobaldi/frescobaldi/"
  name "Frescobaldi"
  desc "LilyPond editor"
  homepage "https://frescobaldi.org/"

  # Some GitHub tags do not follow standard versioning pattern
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Frescobaldi.app"

  zap trash: "~/Library/Preferences/org.frescobaldi.frescobaldi.plist"
end

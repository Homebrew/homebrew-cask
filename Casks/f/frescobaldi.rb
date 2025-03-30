cask "frescobaldi" do
  version "4.0.0"
  sha256 "e8cf2212e0e8869db304f195c404c09df1224d951daa87e19d3a36c58270705d"

  url "https://github.com/frescobaldi/frescobaldi/releases/download/v#{version}/Frescobaldi-#{version}.dmg",
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

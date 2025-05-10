cask "frescobaldi" do
  arch intel: "-Intel"

  version "4.0.2"
  sha256 arm:   "f5e953fa2908c21bcef466489f840f7ea120c61894e7731fb1d4a467609cd0a7",
         intel: "a5ae49e8f9568cd504b1d905415c6d11b47a8a14ae95284adaa5229a495106fe"

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

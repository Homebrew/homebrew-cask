cask "frescobaldi" do
  arch intel: "-Intel"

  version "4.0.4"
  sha256 arm:   "3bcc732ecf2fa07e58a04bf52ff96dbc861dbc6405ab616cca64fe0275eed466",
         intel: "4fea231545831a21ff432c84743dfdc1e3f89695784e78fae82b27f008195cb1"

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

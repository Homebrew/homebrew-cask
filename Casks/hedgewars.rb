cask "hedgewars" do
  version "1.0.0"
  sha256 "5a0bdd9bc4cb7beea03b95a2549c1cf994ea8646f6621f5353dd22d79c757404"

  url "https://www.hedgewars.org/download/releases/Hedgewars-#{version}.dmg"
  appcast "https://hedgewars.org/"
  name "Hedgewars"
  homepage "https://hedgewars.org/"

  app "Hedgewars.app"
end

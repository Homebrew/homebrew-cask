cask "font-fira-mono" do
  version "3.206,4.202"
  sha256 "d86269657387f144d77ba12011124f30f423f70672e1576dc16f918bb16ddfe4"

  url "https://github.com/mozilla/Fira/archive/#{version.csv.second}.tar.gz",
      verified: "github.com/mozilla/Fira/"
  name "Fira Mono"
  homepage "https://mozilla.github.io/Fira/"

  font "Fira-#{version.after_comma}/otf/FiraMono-Bold.otf"
  font "Fira-#{version.after_comma}/otf/FiraMono-Medium.otf"
  font "Fira-#{version.after_comma}/otf/FiraMono-Regular.otf"

  # No zap stanza required
end

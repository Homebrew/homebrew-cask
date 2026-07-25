cask "font-maven-pro-vf-beta" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mavenprovfbeta/MavenProVFBeta.ttf",
      verified: "github.com/google/fonts/"
  name "Maven Pro VF Beta"
  homepage "https://fonts.google.com/earlyaccess"

  font "MavenProVFBeta.ttf"

  # No zap stanza required
end

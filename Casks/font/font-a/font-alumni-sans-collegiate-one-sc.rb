cask "font-alumni-sans-collegiate-one-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/alumnisanscollegiateonesc"
  name "Alumni Sans Collegiate One SC"
  desc "Small caps version of alumni sans collegiate"
  homepage "https://github.com/googlefonts/alumni-sans-collegiate"

  font "AlumniSansCollegiateOneSC-Italic.ttf"
  font "AlumniSansCollegiateOneSC-Regular.ttf"

  # No zap stanza required
end

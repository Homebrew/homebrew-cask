cask "font-sulphur-point" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sulphurpoint"
  name "Sulphur Point"
  homepage "https://fonts.google.com/specimen/Sulphur+Point"

  font "SulphurPoint-Bold.ttf"
  font "SulphurPoint-Light.ttf"
  font "SulphurPoint-Regular.ttf"

  # No zap stanza required
end

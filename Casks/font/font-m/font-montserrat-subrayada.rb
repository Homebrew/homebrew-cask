cask "font-montserrat-subrayada" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/montserratsubrayada"
  name "Montserrat Subrayada"
  homepage "https://fonts.google.com/specimen/Montserrat+Subrayada"

  font "MontserratSubrayada-Bold.ttf"
  font "MontserratSubrayada-Regular.ttf"

  # No zap stanza required
end

cask "font-hind-jalandhar" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/hindjalandhar"
  name "Hind Jalandhar"
  homepage "https://github.com/itfoundry/hind-jalandhar"

  font "HindJalandhar-Bold.ttf"
  font "HindJalandhar-Light.ttf"
  font "HindJalandhar-Medium.ttf"
  font "HindJalandhar-Regular.ttf"
  font "HindJalandhar-SemiBold.ttf"

  # No zap stanza required
end

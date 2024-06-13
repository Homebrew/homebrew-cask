cask "font-signika-negative-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/signikanegativesc"
  name "Signika Negative SC"
  homepage "https://fonts.google.com/specimen/Signika+Negative"

  font "SignikaNegativeSC-Bold.ttf"
  font "SignikaNegativeSC-Light.ttf"
  font "SignikaNegativeSC-Regular.ttf"
  font "SignikaNegativeSC-SemiBold.ttf"

  # No zap stanza required
end

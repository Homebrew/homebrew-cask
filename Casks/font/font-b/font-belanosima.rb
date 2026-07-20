cask "font-belanosima" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/belanosima"
  name "Belanosima"
  homepage "https://fonts.google.com/specimen/Belanosima"

  font "Belanosima-Bold.ttf"
  font "Belanosima-Regular.ttf"
  font "Belanosima-SemiBold.ttf"

  # No zap stanza required
end

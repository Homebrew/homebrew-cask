cask "font-triodion" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/triodion/Triodion-Regular.ttf"
  name "Triodion"
  homepage "https://github.com/slavonic/Triodion"

  font "Triodion-Regular.ttf"

  # No zap stanza required
end

cask "font-macondo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/macondo/Macondo-Regular.ttf"
  name "Macondo"
  homepage "https://fonts.google.com/specimen/Macondo"

  font "Macondo-Regular.ttf"

  # No zap stanza required
end

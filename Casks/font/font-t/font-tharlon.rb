cask "font-tharlon" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tharlon/Tharlon-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Tharlon"
  homepage "https://fonts.google.com/earlyaccess"

  font "Tharlon-Regular.ttf"

  # No zap stanza required
end

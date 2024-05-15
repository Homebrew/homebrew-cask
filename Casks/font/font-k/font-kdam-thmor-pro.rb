cask "font-kdam-thmor-pro" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kdamthmorpro/KdamThmorPro-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kdam Thmor Pro"
  desc "Used as the latin counterpart in the project"
  homepage "https://fonts.google.com/specimen/Kdam+Thmor+Pro"

  font "KdamThmorPro-Regular.ttf"

  # No zap stanza required
end

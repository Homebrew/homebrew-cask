cask "font-ranchers" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ranchers/Ranchers-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ranchers"
  homepage "https://fonts.google.com/specimen/Ranchers"

  font "Ranchers-Regular.ttf"

  # No zap stanza required
end

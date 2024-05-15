cask "font-anta" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anta/Anta-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Anta"
  desc "Particularly suitable for graphic design, but also for branding projects"
  homepage "https://fonts.google.com/specimen/Anta"

  font "Anta-Regular.ttf"

  # No zap stanza required
end

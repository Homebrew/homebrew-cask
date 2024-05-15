cask "font-freeman" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/freeman/Freeman-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Freeman"
  desc "Re-interpretation of the traditional display sans serif gothic typeface"
  homepage "https://fonts.google.com/specimen/Freeman"

  font "Freeman-Regular.ttf"

  # No zap stanza required
end

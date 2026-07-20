cask "font-wellfleet" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/wellfleet/Wellfleet-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Wellfleet"
  homepage "https://fonts.google.com/specimen/Wellfleet"

  font "Wellfleet-Regular.ttf"

  # No zap stanza required
end

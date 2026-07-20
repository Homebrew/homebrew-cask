cask "font-limelight" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/limelight/Limelight-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Limelight"
  homepage "https://fonts.google.com/specimen/Limelight"

  font "Limelight-Regular.ttf"

  # No zap stanza required
end

cask "font-tenor-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tenorsans/TenorSans-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Tenor Sans"
  homepage "https://fonts.google.com/specimen/Tenor+Sans"

  font "TenorSans-Regular.ttf"

  # No zap stanza required
end

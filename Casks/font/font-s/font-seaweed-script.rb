cask "font-seaweed-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/seaweedscript/SeaweedScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Seaweed Script"
  homepage "https://fonts.google.com/specimen/Seaweed+Script"

  font "SeaweedScript-Regular.ttf"

  # No zap stanza required
end

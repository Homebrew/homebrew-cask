cask "font-basic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/basic/Basic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Basic"
  homepage "https://fonts.google.com/specimen/Basic"

  font "Basic-Regular.ttf"

  # No zap stanza required
end

cask "font-yinmar" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yinmar/Yinmar-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yinmar"
  homepage "https://fonts.google.com/specimen/Yinmar"

  font "Yinmar-Regular.ttf"

  # No zap stanza required
end

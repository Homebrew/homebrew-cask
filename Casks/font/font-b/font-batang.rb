cask "font-batang" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/batang/Batang-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Batang"
  homepage "https://fonts.google.com/specimen/Batang"

  font "Batang-Regular.ttf"

  # No zap stanza required
end

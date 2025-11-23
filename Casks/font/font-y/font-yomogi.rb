cask "font-yomogi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yomogi/Yomogi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yomogi"
  homepage "https://fonts.google.com/specimen/Yomogi"

  font "Yomogi-Regular.ttf"

  # No zap stanza required
end

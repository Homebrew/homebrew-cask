cask "font-yarndings-20" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yarndings20/Yarndings20-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yarndings 20"
  homepage "https://fonts.google.com/specimen/Yarndings+20"

  font "Yarndings20-Regular.ttf"

  # No zap stanza required
end

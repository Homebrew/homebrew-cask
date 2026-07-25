cask "font-yarndings-12-charted" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yarndings12charted/Yarndings12Charted-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yarndings 12 Charted"
  homepage "https://fonts.google.com/specimen/Yarndings+12+Charted"

  font "Yarndings12Charted-Regular.ttf"

  # No zap stanza required
end

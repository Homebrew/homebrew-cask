cask "font-unifrakturcook" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/unifrakturcook/UnifrakturCook-Bold.ttf",
      verified: "github.com/google/fonts/"
  name "UnifrakturCook"
  homepage "https://fonts.google.com/specimen/UnifrakturCook"

  font "UnifrakturCook-Bold.ttf"

  # No zap stanza required
end

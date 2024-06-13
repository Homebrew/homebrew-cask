cask "font-b612" do
  version "1.008"
  sha256 "727cb91e47d65ac49c2d97d7b1c36d9891b885d9ddf06e15ad3d23d22bdad9cf"

  url "https://github.com/polarsys/b612/archive/refs/tags/#{version}.zip",
      verified: "github.com/polarsys/b612/"
  name "B612"
  homepage "https://b612-font.com/"

  font "b612-#{version}/fonts/ttf/B612-Bold.ttf"
  font "b612-#{version}/fonts/ttf/B612-BoldItalic.ttf"
  font "b612-#{version}/fonts/ttf/B612-Italic.ttf"
  font "b612-#{version}/fonts/ttf/B612-Regular.ttf"

  # No zap stanza required
end

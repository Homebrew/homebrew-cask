cask "font-b612" do
  version "1.008"
  sha256 "bfe4827931a22ecde5576c2bd06b462d467b89fa580b6ded651346f94eba8dd6"

  url "https://github.com/polarsys/b612/archive/refs/tags/#{version}.tar.gz",
      verified: "github.com/polarsys/b612/"
  name "B612"
  homepage "https://b612-font.com/"

  font "b612-#{version}/fonts/ttf/B612-Bold.ttf"
  font "b612-#{version}/fonts/ttf/B612-BoldItalic.ttf"
  font "b612-#{version}/fonts/ttf/B612-Italic.ttf"
  font "b612-#{version}/fonts/ttf/B612-Regular.ttf"

  # No zap stanza required
end

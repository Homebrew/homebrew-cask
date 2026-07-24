cask "font-jigmo" do
  version "20250912"
  sha256 "5744c7386d129475d87607ca66d043c8793c65448adeaedc921b6931890e5d0b"

  url "https://kamichikoichi.github.io/jigmo/Jigmo-#{version}.zip"
  name "Jigmo（字雲）フォント"
  homepage "https://kamichikoichi.github.io/jigmo/"

  livecheck do
    url "https://kamichikoichi.github.io/jigmo/"
    regex(/Jigmo-(\d{8})\.zip/i)
  end

  font "Jigmo.ttf"
  font "Jigmo2.ttf"
  font "Jigmo3.ttf"

  # No zap stanza required
end

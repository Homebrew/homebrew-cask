cask "font-maple" do
  version "6.3"
  sha256 "029e0ec0ffd0185cfdfb19f5dab7a489ad7fa7047166fbfe1fe6666625dcc5c6"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMono.zip"
  name "Maple Mono"
  desc "Nerd Font font with round corners"
  homepage "https://github.com/subframe7536/Maple-font"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "ttf/MapleMono-Bold.ttf"
  font "ttf/MapleMono-BoldItalic.ttf"
  font "ttf/MapleMono-Italic.ttf"
  font "ttf/MapleMono-Regular.ttf"

  # No zap stanza required
end

cask "font-maple-mono" do
  # Check on next version bump if the `container` stanza can be removed
  version "6.4"
  sha256 "7f07c594d6da5971428dc9e8ecd2b7759a80cec1cb87dadd1a44aadbac5cf6ac"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMono-otf.zip"
  name "Maple Mono"
  homepage "https://github.com/subframe7536/Maple-font"

  livecheck do
    url :url
    strategy :github_latest
  end

  container type: :tar

  font "MapleMono-Bold.otf"
  font "MapleMono-BoldItalic.otf"
  font "MapleMono-Italic.otf"
  font "MapleMono-Light.otf"
  font "MapleMono-LightItalic.otf"
  font "MapleMono-Regular.otf"

  # No zap stanza required
end

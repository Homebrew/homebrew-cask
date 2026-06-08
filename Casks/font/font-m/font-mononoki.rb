cask "font-mononoki" do
  version "1.6"
  sha256 "86549faebfd9231c3bd0942038cb1f717f5186729c9a54d0045e36b996c1a355"

  url "https://github.com/madmalik/mononoki/releases/download/#{version}/mononoki.zip",
      verified: "github.com/madmalik/mononoki/"
  name "Mononoki"
  homepage "https://madmalik.github.io/mononoki/"

  font "mononoki-Bold.otf"
  font "mononoki-Bold.ttf"
  font "mononoki-BoldItalic.otf"
  font "mononoki-BoldItalic.ttf"
  font "mononoki-Italic.otf"
  font "mononoki-Italic.ttf"
  font "mononoki-Regular.otf"
  font "mononoki-Regular.ttf"

  # No zap stanza required
end

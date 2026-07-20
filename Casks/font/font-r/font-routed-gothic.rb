cask "font-routed-gothic" do
  version "1.0.0"
  sha256 "e0079b81fa068a4672f02585f7bc2910bf1535d8cd73b04d4a023bd2cbca361d"

  url "https://github.com/dse/routed-gothic/archive/refs/tags/v#{version}.tar.gz",
      verified: "github.com/dse/routed-gothic/"
  name "Routed Gothic"
  homepage "https://webonastick.com/fonts/routed-gothic/"

  font "routed-gothic-#{version}/dist/ttf/routed-gothic-half-italic.ttf"
  font "routed-gothic-#{version}/dist/ttf/routed-gothic-italic.ttf"
  font "routed-gothic-#{version}/dist/ttf/routed-gothic-narrow-half-italic.ttf"
  font "routed-gothic-#{version}/dist/ttf/routed-gothic-narrow-italic.ttf"
  font "routed-gothic-#{version}/dist/ttf/routed-gothic-narrow.ttf"
  font "routed-gothic-#{version}/dist/ttf/routed-gothic-wide-half-italic.ttf"
  font "routed-gothic-#{version}/dist/ttf/routed-gothic-wide-italic.ttf"
  font "routed-gothic-#{version}/dist/ttf/routed-gothic-wide.ttf"
  font "routed-gothic-#{version}/dist/ttf/routed-gothic.ttf"

  # No zap stanza required
end

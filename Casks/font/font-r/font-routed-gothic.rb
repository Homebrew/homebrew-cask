cask "font-routed-gothic" do
  version "1.0.0"
  sha256 "3ecffba109bf2619057815411253e5c6f47f82fedba38ade6c951e13a8b2ad5e"

  url "https://webonastick.com/fonts/routed-gothic/download/routed-gothic-ttf-v#{version}.zip"
  name "Routed Gothic"
  homepage "https://webonastick.com/fonts/routed-gothic/"

  font "routed-gothic-ttf-v#{version}/routed-gothic-half-italic.ttf"
  font "routed-gothic-ttf-v#{version}/routed-gothic-italic.ttf"
  font "routed-gothic-ttf-v#{version}/routed-gothic-narrow-half-italic.ttf"
  font "routed-gothic-ttf-v#{version}/routed-gothic-narrow-italic.ttf"
  font "routed-gothic-ttf-v#{version}/routed-gothic-narrow.ttf"
  font "routed-gothic-ttf-v#{version}/routed-gothic-wide-half-italic.ttf"
  font "routed-gothic-ttf-v#{version}/routed-gothic-wide-italic.ttf"
  font "routed-gothic-ttf-v#{version}/routed-gothic-wide.ttf"
  font "routed-gothic-ttf-v#{version}/routed-gothic.ttf"

  # No zap stanza required
end

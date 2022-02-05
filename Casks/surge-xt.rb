cask "surge-xt" do
  version "1.0.1"
  sha256 "644efd84e2a8c62e6211f3d1c1311c8f5a0386c6e91d69c5a37e5a1aaebc504a"

  url "https://github.com/surge-synthesizer/releases-xt/releases/download/#{version}/surge-xt-macOS-#{version}.dmg",
      verified: "github.com/surge-synthesizer/releases-xt/"
  name "Surge XT"
  desc "Hybrid synthesizer"
  homepage "https://surge-synthesizer.github.io/"

  pkg "surge-xt-macOS-#{version}.pkg"

  uninstall pkgutil: [
    "com.surge-synth-team.surge-xt-fx.app.pkg",
    "com.surge-synth-team.surge-xt-fx.component.pkg",
    "com.surge-synth-team.surge-xt-fx.vst3.pkg",
    "com.surge-synth-team.surge-xt.app.pkg",
    "com.surge-synth-team.surge-xt.component.pkg",
    "com.surge-synth-team.surge-xt.resources.pkg",
    "com.surge-synth-team.surge-xt.vst3.pkg",
  ],
            delete:  [
              "/Applications/Surge XT Effects.app",
              "/Applications/Surge XT.app",
            ]

  # No zap stanza required
end

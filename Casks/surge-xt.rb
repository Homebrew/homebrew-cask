cask "surge-xt" do
  version "1.0.0"
  sha256 "d0a481745e7526b02ba41267be9bf61a90377f0fed80ffcebc655777cd9c5a4f"

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

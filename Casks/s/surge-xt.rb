cask "surge-xt" do
  version "1.3.1"
  sha256 "e30b218700d4067edb3a0eadb4128784e41f91f663cff19e3fbb38460883cf59"

  url "https://github.com/surge-synthesizer/releases-xt/releases/download/#{version}/surge-xt-macOS-#{version}.dmg",
      verified: "github.com/surge-synthesizer/releases-xt/"
  name "Surge XT"
  desc "Hybrid synthesiser"
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
              "org.surge-synth-team.surge-xt-fx.app.pkg",
              "org.surge-synth-team.surge-xt-fx.clap.pkg",
              "org.surge-synth-team.surge-xt-fx.component.pkg",
              "org.surge-synth-team.surge-xt-fx.vst3.pkg",
              "org.surge-synth-team.surge-xt.app.pkg",
              "org.surge-synth-team.surge-xt.clap.pkg",
              "org.surge-synth-team.surge-xt.component.pkg",
              "org.surge-synth-team.surge-xt.resources.pkg",
              "org.surge-synth-team.surge-xt.vst3.pkg",
            ],
            delete:  [
              "/Applications/Surge XT Effects.app",
              "/Applications/Surge XT.app",
            ]

  # No zap stanza required
end

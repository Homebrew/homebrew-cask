cask "surge-xt" do
  version "1.2.0"
  sha256 "2f5e81656e2f19ec3647211d53f8e2c5905117781e9f609ee70b9094a6f04469"

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
              "org.surge-synth-team.surge-xt-fx.app.pkg",
              "org.surge-synth-team.surge-xt-fx.component.pkg",
              "org.surge-synth-team.surge-xt-fx.vst3.pkg",
              "org.surge-synth-team.surge-xt-fx.clap.pkg",
              "org.surge-synth-team.surge-xt.app.pkg",
              "org.surge-synth-team.surge-xt.component.pkg",
              "org.surge-synth-team.surge-xt.resources.pkg",
              "org.surge-synth-team.surge-xt.vst3.pkg",
              "org.surge-synth-team.surge-xt.clap.pkg",
            ],
            delete:  [
              "/Applications/Surge XT Effects.app",
              "/Applications/Surge XT.app",
            ]

  # No zap stanza required
end

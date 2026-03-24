cask "ob-xf" do
  version "1.0.1"
  sha256 "255378d5ee3cfff89c169d00bbbec7ffa8a809bec0676768b07ee9f9bfebf1a6"

  url "https://github.com/surge-synthesizer/OB-Xf/releases/download/v#{version}/ob-xf-macOS-2026-03-24-89eb632.dmg",
      verified: "github.com/surge-synthesizer/OB-Xf/"
  name "OB-Xf"
  desc "Virtual analog synthesiser"
  homepage "https://surge-synth-team.org/ob-xf/"

  pkg "ob-xf-macOS-2026-03-24-89eb632.pkg"

  uninstall pkgutil: [
              "org.surge-synth-team.ob-xf.app.pkg",
              "org.surge-synth-team.ob-xf.clap.pkg",
              "org.surge-synth-team.ob-xf.component.pkg",
              "org.surge-synth-team.ob-xf.resources.pkg",
              "org.surge-synth-team.ob-xf.vst3.pkg",
            ],
            delete:  "/Applications/OB-Xf.app"

  # No zap stanza required
end

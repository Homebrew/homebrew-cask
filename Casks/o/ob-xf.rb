cask "ob-xf" do
  version "1.0.2"
  sha256 "e069c10a1b45b8ac3d4a2243969fad030c91b661ed30b7ea9daa7d1316c42d4f"

  url "https://github.com/surge-synthesizer/OB-Xf/releases/download/v#{version}/ob-xf-macOS-v#{version}.dmg",
      verified: "github.com/surge-synthesizer/OB-Xf/"
  name "OB-Xf"
  desc "Virtual analog synthesizer"
  homepage "https://surge-synth-team.org/ob-xf/"

  pkg "ob-xf-macOS-v#{version}.pkg"

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

cask "ob-xf" do
  version "1.0.3"
  sha256 "e6f52f453c476dfafbd3225b80c5c3ec341ec20be5748c6f70c01cef14e7e7a8"

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

  zap trash: "~/Library/Application Support/OB-Xf.settings"
end

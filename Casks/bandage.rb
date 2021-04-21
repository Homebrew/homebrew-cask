cask "bandage" do
  version "0.8.1"
  sha256 "13e90e5824b61bd4abe62afa8785a28627714bf7a3d4dad3edb4b8f9854d3b6d"

  url "https://github.com/rrwick/Bandage/releases/download/v#{version}/Bandage_Mac_v#{version.dots_to_underscores}.zip",
      verified: "github.com/rrwick/Bandage/"
  name "Bandage"
  desc "Bioinformatics Application for Navigating De novo Assembly Graphs"
  homepage "https://rrwick.github.io/Bandage/"

  app "Bandage.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/bandage.wrapper.sh"
  binary shimscript, target: "bandage"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/Bandage.app/Contents/MacOS/Bandage' "$@"
    EOS
  end
end

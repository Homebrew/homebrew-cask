cask "gqrx" do
  version "2.14.2"
  sha256 "679143fb2860d8ddbb9e8d88c58477a5cca6064ca47392d87461da497b18f857"

  url "https://github.com/csete/gqrx/releases/download/v#{version.major_minor_patch}/Gqrx-#{version}.dmg",
      verified: "github.com/csete/gqrx/"
  appcast "https://github.com/csete/gqrx/releases.atom"
  name "Gqrx"
  desc "Software-defined radio receiver powered by GNU Radio and Qt"
  homepage "https://gqrx.dk/"

  app "Gqrx.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/gqrx.wrapper.sh"
  binary shimscript, target: "gqrx"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/Gqrx.app/Contents/MacOS/gqrx' "$@"
    EOS
  end
end

cask "musescore" do
  version "3.5.1"
  sha256 "17f02fd50e74c3d2c5c5e7451cb00b21fd7e84e10d5201211b2bed0ebb1a2e55"

  # github.com/musescore/MuseScore/ was verified as official when first introduced to the cask
  url "https://github.com/musescore/MuseScore/releases/download/v#{version.chomp(".0")}/MuseScore-#{version}.dmg"
  appcast "https://github.com/musescore/MuseScore/releases.atom"
  name "MuseScore"
  desc "Open-source music notation software"
  homepage "https://musescore.org/"

  depends_on macos: ">= :yosemite"

  app "MuseScore #{version}.app"
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/mscore.wrapper.sh"
  binary shimscript, target: "mscore"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/MuseScore #{version}.app/Contents/MacOS/mscore' "$@"
    EOS
  end
end

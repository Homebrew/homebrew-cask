cask "musescore" do
  version "3.5.1"
  sha256 "b3316b1ad11ba011e2505691d861287173639644616753ee9525330c2a41dabe"

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
      exec '#{appdir}/MuseScore #{version.major}.app/Contents/MacOS/mscore' "$@"
    EOS
  end
end

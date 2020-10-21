cask "musescore" do
  version "3.5.2.312126096"
  sha256 "1179534be80e528f22eb3927e1939263e67127265c69e312356d4dceb7ecad0d"

  # github.com/musescore/MuseScore/ was verified as official when first introduced to the cask
  url "https://github.com/musescore/MuseScore/releases/download/v#{version.major_minor_patch}/MuseScore-#{version}.dmg"
  appcast "https://github.com/musescore/MuseScore/releases.atom",
          must_contain: version.major_minor_patch
  name "MuseScore"
  desc "Open-source music notation software"
  homepage "https://musescore.org/"

  depends_on macos: ">= :yosemite"

  app "MuseScore #{version.major}.app"
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

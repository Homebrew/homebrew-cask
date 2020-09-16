cask "musescore" do
  version "3.5.0"
  sha256 "42f67d022604c6da5a31850ffeb0b2adde0bcc8f675aea6acfdc791eefa73047"

  # github.com/musescore/MuseScore/ was verified as official when first introduced to the cask
  url "https://github.com/musescore/MuseScore/releases/download/v#{version.chomp(".0")}/MuseScore-#{version}.dmg"
  appcast "https://github.com/musescore/MuseScore/releases.atom"
  name "MuseScore"
  desc "Open-source music notation software"
  homepage "https://musescore.org/"

  depends_on macos: ">= :yosemite"

  app "MuseScore #{version.major_minor}.app"
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/mscore.wrapper.sh"
  binary shimscript, target: "mscore"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/MuseScore #{version.major_minor}.app/Contents/MacOS/mscore' "$@"
    EOS
  end
end

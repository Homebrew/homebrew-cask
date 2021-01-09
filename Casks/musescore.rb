cask "musescore" do
  version "3.5.2.312126096"
  sha256 "1179534be80e528f22eb3927e1939263e67127265c69e312356d4dceb7ecad0d"

  url "https://github.com/musescore/MuseScore/releases/download/v#{version.major_minor_patch}/MuseScore-#{version}.dmg",
      verified: "github.com/musescore/MuseScore/"
  name "MuseScore"
  desc "Open-source music notation software"
  homepage "https://musescore.org/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/MuseScore-(\d+(?:\.\d+)*)\.dmg}i)
  end

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

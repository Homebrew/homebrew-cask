cask "musescore" do
  version "3.6.0.485472625"
  sha256 "cbf9bd5b33b564719788d1c3618e492afad035027ac31dbfc47a83d054e1644f"

  url "https://github.com/musescore/MuseScore/releases/download/v#{version.major_minor_patch.chomp(".0")}/MuseScore-#{version}.dmg",
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

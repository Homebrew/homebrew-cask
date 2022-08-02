cask "musescore" do
  version "3.6.2.548020600"
  sha256 "9477247e14d3ac3cda1b095b9d9e70d0ed6030f6d19ab9a0013206318e75ee5d"

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

  depends_on macos: ">= :mojave"

  app "MuseScore #{version.major}.app"
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/mscore.wrapper.sh"
  binary shimscript, target: "mscore"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/MuseScore #{version.major}.app/Contents/MacOS/mscore' "$@"
    EOS
  end

  zap trash: [
    "~/Documents/MuseScore3",
    "~/Library/Application Support/MuseScore",
    "~/Library/Caches/MuseScore",
    "~/Library/Caches/org.musescore.MuseScore",
    "~/Library/Preferences/org.musescore.MuseScore.plist",
    "~/Library/Preferences/org.musescore.MuseScore3.plist",
    "~/Library/Saved Application State/org.musescore.MuseScore.savedState",
  ]
end

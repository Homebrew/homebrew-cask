cask "musescore" do
  version "4.2.0.233521125"
  sha256 "383c589c1b5fa4768807a59f22898c5560d83989345aa19584f3e4452dfc0b26"

  url "https://github.com/musescore/MuseScore/releases/download/v#{version.major_minor_patch}/MuseScore-#{version}.dmg",
      verified: "github.com/musescore/MuseScore/"
  name "MuseScore"
  desc "Open-source music notation software"
  homepage "https://musescore.org/"

  livecheck do
    url :url
    regex(/^MuseScore[._-]v?(\d+(?:\.\d+)+)\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true
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
    "~/Library/Application Support/MuseScore",
    "~/Library/Caches/MuseScore",
    "~/Library/Caches/org.musescore.MuseScore",
    "~/Library/Preferences/org.musescore.MuseScore*.plist",
    "~/Library/Saved Application State/org.musescore.MuseScore.savedState",
  ]
end

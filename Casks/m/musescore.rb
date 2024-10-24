cask "musescore" do
  version "4.4.3.242971445"
  sha256 "286f6b314bc4dcdcc5f643f3025930ec1230a11348ce37521684e55663d014ef"

  url "https://github.com/musescore/MuseScore/releases/download/v#{version.major_minor_patch}/MuseScore-Studio-#{version}.dmg",
      verified: "github.com/musescore/MuseScore/"
  name "MuseScore"
  desc "Open-source music notation software"
  homepage "https://musescore.org/"

  livecheck do
    url :url
    regex(/^MuseScore[._-]Studio[._-]v?(\d+(?:\.\d+)+)\.dmg$/i)
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

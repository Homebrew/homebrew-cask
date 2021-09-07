cask "archi" do
  version "4.8.1"
  sha256 "7c4a4eff9e70ef51d8befd160c9d47d43ed86d231fda2d7ef9c553d4e0369059"

  url "https://www.archimatetool.com/downloads/archi/?dl=#{version}/Archi-Mac-#{version}.dmg"
  name "Archi"
  name "ArchiMate Tool"
  desc "Modelling toolkit for ArchiMate models and sketches"
  homepage "https://www.archimatetool.com/"

  livecheck do
    url "https://www.archimatetool.com/download/"
    regex(/\s+id\s*=\s*"download"\s+data-version\s*=\s*"(\d+(?:\.\d+)+)"/i)
  end

  depends_on macos: ">= :sierra"

  app "Archi.app"

  zap trash: [
    "~/Library/Application Support/Archi#{version.major}",
    "~/Library/Preferences/com.archimatetool.editor.plist",
    "~/Library/Saved Application State/com.archimatetool.editor.savedState",
  ]
end

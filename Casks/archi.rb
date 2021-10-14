cask "archi" do
  version "4.9.0"
  sha256 "06a4c4d89f51a55f2a68769bf61a30ac2653280ba0125e9d600650569c2d6f1d"

  url "https://www.archimatetool.com/downloads/archi/?dl=#{version}/Archi-Mac-#{version}.dmg",
      using: :post
  name "Archi"
  name "ArchiMate Tool"
  desc "Modelling toolkit for ArchiMate models and sketches"
  homepage "https://www.archimatetool.com/"

  livecheck do
    url "https://www.archimatetool.com/download/"
    regex(/\s+id\s*=\s*"download"\s+data-version\s*=\s*"(\d+(?:\.\d+)+)"/i)
  end

  conflicts_with cask: "homebrew/cask-versions/archi-ea"
  depends_on macos: ">= :sierra"

  app "Archi.app"

  zap trash: [
    "~/Library/Application Support/Archi#{version.major}",
    "~/Library/Preferences/com.archimatetool.editor.plist",
    "~/Library/Saved Application State/com.archimatetool.editor.savedState",
  ]
end

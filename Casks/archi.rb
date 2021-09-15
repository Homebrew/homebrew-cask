cask "archi" do
  version "4.8.1"
  sha256 "c67f1a72a35393d9dabbef375529341b2f9f5006bf7bf4c7f242c661644a956c"

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

cask "archi" do
  arch = Hardware::CPU.intel? ? "" : "-Silicon"

  version "4.9.0"

  if Hardware::CPU.intel?
    sha256 "06a4c4d89f51a55f2a68769bf61a30ac2653280ba0125e9d600650569c2d6f1d"
  else
    sha256 "317a72129385f80829d1cb20d21a5fed76764afeb26f1eb4fc2f6e566f80b56d"
  end

  url "https://www.archimatetool.com/downloads/archi/?d1=#{version}/Archi-Mac#{arch}-#{version}.dmg",
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
    "~/Library/Application Support/Archi*",
    "~/Library/Caches/com.archimatetool.editor",
    "~/Library/Preferences/com.archimatetool.editor.plist",
    "~/Library/Saved Application State/com.archimatetool.editor.savedState",
  ]
end

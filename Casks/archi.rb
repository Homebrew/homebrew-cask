cask "archi" do
  arch = Hardware::CPU.intel? ? "" : "-Silicon"

  version "4.9.0"

  if Hardware::CPU.intel?
    sha256 "72d90bdd79762ccdf2daf463d6ea950a863df33cde5e1e5ae054ee8ee5e43d04"
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

  depends_on macos: ">= :sierra"

  app "Archi.app"

  zap trash: [
    "~/Library/Application Support/Archi*",
    "~/Library/Caches/com.archimatetool.editor",
    "~/Library/Preferences/com.archimatetool.editor.plist",
    "~/Library/Saved Application State/com.archimatetool.editor.savedState",
  ]
end

cask "archi" do
  arch = Hardware::CPU.intel? ? "" : "-Silicon"

  version "4.9.1"

  if Hardware::CPU.intel?
    sha256 "376d6dbd90c5e0f0633b049cdb684974cabdb32db64e1e38c995c70f262172c8"
  else
    sha256 "12a6e97111f71184afe8e795ad27b2d06dd6ccdaa97c1bdc55aff4b307bfa828"
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

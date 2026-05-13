cask "linker" do
  version "1.1.1"
  sha256 "6ef73d7c0ae8ab7c70270965f85b68735baf93c5cf02564c2e0328d56c63f530"

  url "https://linker.appmac.fr/update/download/"
  name "Linker"
  desc "Connect files, folders, emails, websites and more — bidirectionally"
  homepage "https://linker.appmac.fr"

  livecheck do
    url "https://linker.appmac.fr/update/sparkle/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: :sequoia

  app "Linker.app"

  zap trash: [
    "~/Library/Application Support/Linker",
    "~/Library/Caches/fr.arievanboxel.linker",
    "~/Library/HTTPStorages/fr.arievanboxel.linker",
  ]
end

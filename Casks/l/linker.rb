cask "linker" do
  version "1.1.1"
  sha256 "20a6123264113894b05ded67e3dd6fa913a69b6ff15718f4d60041f75e7e66ef"

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

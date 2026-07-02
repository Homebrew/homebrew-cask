cask "lolgato" do
  version "1.7.3"
  sha256 "d5ce6fde0cf004a83a9a44f9075b5fe2e0b8b56ec8e54bc091cc60ad9e42b062"

  url "https://github.com/raine/Lolgato/releases/download/v#{version}/Lolgato.dmg"
  name "Lolgato"
  desc "Enhances control over Elgato lights"
  homepage "https://github.com/raine/Lolgato/"

  depends_on macos: :sonoma

  app "Lolgato.app"

  zap trash: [
    "~/Library/Caches/fi.zendit.Lolgato",
    "~/Library/HTTPStorages/fi.zendit.Lolgato",
    "~/Library/Preferences/fi.zendit.Lolgato.plist",
  ]
end

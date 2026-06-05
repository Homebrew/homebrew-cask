cask "lolgato" do
  version "1.7.2"
  sha256 "41c2d381960e542572b85622f23bc989e2366fc8684258a4dda036c056199403"

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

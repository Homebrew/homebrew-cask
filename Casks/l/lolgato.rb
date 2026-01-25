cask "lolgato" do
  version "1.7.0"
  sha256 "ca64bdfdf7e62409e56d3fc08afd65e6cea40d6eb90751f2c69d5fcb62115395"

  url "https://github.com/raine/Lolgato/releases/download/v#{version}/Lolgato.dmg"
  name "Lolgato"
  desc "Enhances control over Elgato lights"
  homepage "https://github.com/raine/Lolgato/"

  depends_on macos: ">= :sonoma"

  app "Lolgato.app"

  zap trash: [
    "~/Library/Caches/fi.zendit.Lolgato",
    "~/Library/HTTPStorages/fi.zendit.Lolgato",
    "~/Library/Preferences/fi.zendit.Lolgato.plist",
  ]
end

cask "bitwig-studio" do
  version "3.3.1"
  sha256 "edabbd2f53c3a4267b28e3698ca3f811beb901a00efee153269cf723fdf9860d"

  url "https://downloads.bitwig.com/stable/#{version}/Bitwig%20Studio%20#{version}.dmg"
  appcast "https://www.bitwig.com/en/download.html"
  name "Bitwig Studio"
  homepage "https://www.bitwig.com/"

  app "Bitwig Studio.app"

  zap trash: [
    "~/Library/Application Support/Bitwig",
    "~/Library/Caches/Bitwig",
    "~/Library/Logs/Bitwig",
  ]
end

cask "bitwig-studio" do
  version "3.2.6"
  sha256 "f3f24088a21fb9815a18f0256ded2aa8231b2b37a55cd13eb7913277ef442a8e"

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

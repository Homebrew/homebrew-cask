cask "bitwig-studio" do
  version "3.2.7"
  sha256 "e0536ca4e3f310c0689ca8da1c0c55f4083452c0407eafcd3ebf2738e2cc7d72"

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

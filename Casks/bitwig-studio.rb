cask "bitwig-studio" do
  version "3.3.3"
  sha256 "99f00a0e8126092137e05d7b39762e003717887b129a178b1f24ff8e42bafb25"

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

cask "bitwig-studio" do
  version "3.3.7"
  sha256 "ceb104ce25652ac30458418d378320d68c0a174cccc861e66686c20fe04d393d"

  url "https://downloads.bitwig.com/stable/#{version}/Bitwig%20Studio%20#{version}.dmg"
  name "Bitwig Studio"
  desc "Digital audio workstation"
  homepage "https://www.bitwig.com/"

  livecheck do
    url "https://www.bitwig.com/download/"
    strategy :page_match
    regex(/Bitwig\s*Studio\s*(\d+(?:\.\d+)*)/i)
  end

  app "Bitwig Studio.app"

  zap trash: [
    "~/Library/Application Support/Bitwig",
    "~/Library/Caches/Bitwig",
    "~/Library/Logs/Bitwig",
  ]
end

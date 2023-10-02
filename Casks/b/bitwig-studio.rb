cask "bitwig-studio" do
  version "5.0.9"
  sha256 "fceca7ca4ab02dd3e367d5c9284a1d03bc1f71f229b1e8951438d975aacea4f2"

  url "https://downloads.bitwig.com/stable/#{version}/Bitwig%20Studio%20#{version}.dmg"
  name "Bitwig Studio"
  desc "Digital audio workstation"
  homepage "https://www.bitwig.com/"

  livecheck do
    url "https://www.bitwig.com/download/"
    regex(/Bitwig\s*Studio\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :mojave"

  app "Bitwig Studio.app"

  zap trash: [
    "~/Library/Application Support/Bitwig",
    "~/Library/Caches/Bitwig",
    "~/Library/Logs/Bitwig",
  ]
end

cask "bitwig-studio" do
  version "5.2.7"
  sha256 "4991d6217c8e7775370c29c76dd5abb844deb02caeaa11655626f62f849106f1"

  url "https://www.bitwig.com/dl/Bitwig%20Studio/#{version}/installer_mac"
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

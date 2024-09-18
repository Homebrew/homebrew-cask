cask "bitwig-studio" do
  version "5.2.4"
  sha256 "14d4c0722d589d5efec580db6f7d2db706f07e35cd257b75becb5bc97ba4b2ab"

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

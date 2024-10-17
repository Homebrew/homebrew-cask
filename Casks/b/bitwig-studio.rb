cask "bitwig-studio" do
  version "5.2.5"
  sha256 "ea30e6ebcf531615b5972e9c5eb76ab0fb9ebac91989cffadd616d92cf083cf6"

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

cask "bitwig-studio" do
  version "5.2.1"
  sha256 "ca9747b428e3f20f32ced595c1767791d74538ac25fe478c7f9919e35de4900d"

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

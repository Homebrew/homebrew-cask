cask "bitwig-studio" do
  version "3.3.10"
  sha256 "d1cda902170d5f35b8173710d416383f940124904ab60366cc0e9f092081622a"

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

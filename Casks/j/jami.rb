cask "jami" do
  version "2.34,2025031510"
  sha256 "4e345a46c902dc5d6298cdda4322506830c3fa4bef3c0b365060d7fb2c141517"

  url "https://dl.jami.net/mac_osx/jami#{version.csv.second}.dmg"
  name "Jami"
  name "Savoir-faire Linux Ring"
  desc "Decentralised instant messenger and softphone"
  homepage "https://jami.net/"

  livecheck do
    url "https://dl.jami.net/mac_osx/sparkle-ring.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Jami.app"

  zap trash: "~/Library/Application Support/jami"
end

cask "mtmr" do
  version "0.27"
  sha256 "cf0b1b8cb9d6758cd0b69d2c4c5f9f1a067416126a7daa76a8d94fea8189d608"

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast "https://mtmr.app/appcast.xml"
  name "My TouchBar. My rules"
  homepage "https://mtmr.app/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "MTMR.app"

  zap trash: "~/Library/Application Support/MTMR"
end

cask "mtmr" do
  version "0.27,433"
  sha256 "cf0b1b8cb9d6758cd0b69d2c4c5f9f1a067416126a7daa76a8d94fea8189d608"

  url "https://mtmr.app/MTMR%20#{version.csv.first}.dmg"
  name "My TouchBar. My rules"
  homepage "https://mtmr.app/"

  livecheck do
    url "https://mtmr.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "MTMR.app"

  zap trash: "~/Library/Application Support/MTMR"
end

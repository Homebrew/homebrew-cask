cask "mtmr" do
  version "0.26.1"
  sha256 "152e7ee5672740b4cd333f9f1650512694ed0d2aba10ef14976725c854d73c5f"

  url "https://mtmr.app/MTMR%20#{version}.dmg"
  appcast "https://mtmr.app/appcast.xml"
  name "My TouchBar. My rules"
  homepage "https://mtmr.app/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "MTMR.app"

  zap trash: "~/Library/Application Support/MTMR"
end

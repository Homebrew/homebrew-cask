cask "kodelife" do
  version "1.0.8,170"
  sha256 "d73bbbdfd9b7870ecc0cfbebee0f8dbfe07e6694b928ffcf6bc3ab25d463913e"

  url "https://hexler.net/pub/kodelife/kodelife-#{version.csv.first}.#{version.csv.second}-macos.dmg"
  name "KodeLife"
  desc "Real-time GPU shader editor"
  homepage "https://hexler.net/software/kodelife"

  livecheck do
    url "https://hexler.net/kodelife/appcast/macos"
    strategy :sparkle
  end

  auto_updates true

  app "KodeLife.app"
end

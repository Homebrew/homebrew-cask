cask "kodelife" do
  version "1.0.9,172"
  sha256 "81f0115f2cd9b7dca95cba8603d7d6926697318be253969e51f9fe13ca386665"

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

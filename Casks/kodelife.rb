cask "kodelife" do
  version "1.0.5,161"
  sha256 "c9d40b74a98efab3201ead703ceb488ddd016a61581a9d04d4c71e2983fd6de9"

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

cask "kodelife" do
  version "0.9.9,148"
  sha256 "cab6dabc30bf0a1fef5b16327c964896a12fefcad91ba987acbb746e6214614c"

  url "https://hexler.net/pub/kodelife/kodelife-#{version.csv.first}.#{version.csv.second}-macos.dmg"
  name "KodeLife"
  desc "Real-time GPU shader editor"
  homepage "https://hexler.net/software/kodelife"

  livecheck do
    url "https://hexler.net/pub/kodelife/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "KodeLife.app"
end

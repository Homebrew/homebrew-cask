cask "kodelife" do
  version "1.0.7,167"
  sha256 "d14c4cda6e091589671effe28042c5158f9b3d883b84b0afc25e8199d70d508f"

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

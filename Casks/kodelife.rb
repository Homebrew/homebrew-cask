cask "kodelife" do
  version "1.0.4,160"
  sha256 "b479fd159e5ac1548d46e986e60a299283c89851e9cb72bc7ad0e8e3c2f07ee2"

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

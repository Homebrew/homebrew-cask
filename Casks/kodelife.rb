cask "kodelife" do
  version "1.0.6,164"
  sha256 "aa7897be2b78cef7f2e1f4211e543d926e996fd4820f40cf42d7d2f100bbfac2"

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

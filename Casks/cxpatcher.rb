cask "cxpatcher" do
  version "0.2.13"
  sha256 "0365fa393df6befd3608f2397e4e41283dd51288bc7c1b2e0831d8f0bd1c3c11"

  url "https://github.com/italomandara/CXPatcher/releases/download/V#{version}/Crossover.patcher.app.zip"
  name "CrossOver patcher"
  desc "Patcher to upgrade Crossover dependencies and improve compatibility"
  homepage "https://github.com/italomandara/CXPatcher/"

  livecheck do
    url "https://github.com/italomandara/CXPatcher/"
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Crossover patcher.app"

  zap trash: [
    "~/Library/Application Scripts/com.italomandara.Crossover-patcher",
    "~/Library/Containers/com.italomandara.Crossover-patcher",
  ]
end

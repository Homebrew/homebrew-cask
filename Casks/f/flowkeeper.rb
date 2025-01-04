cask "flowkeeper" do
  arch arm: "arm64", intel: "x86_64"

  version "v0.8.1"

  on_arm do
    sha256 "d499a6235ee79e78270924e2fc97dbdbe4cca4afec368e8e8473173e282bd097"
    url "https://github.com/flowkeeper-org/fk-desktop/releases/download/#{version}/Flowkeeper.dmg"
  end
  on_intel do
    sha256 "629c911ec98fa3c7eb6e67a85c9f9f5296d28d2f81b07271c13a48ea05bb2c1a"
    url "https://github.com/flowkeeper-org/fk-desktop/releases/download/#{version}/Flowkeeper-x86.dmg"
  end

  name "Flowkeeper"
  desc "Independent Pomodoro Technique desktop timer for power users"
  homepage "https://flowkeeper.org/"

  depends_on macos: ">= :ventura"

  app "Flowkeeper.app"

  zap trash: [
    "~/flowkeeper-data.txt",
    "~/flowkeeper.log",
  ]
end

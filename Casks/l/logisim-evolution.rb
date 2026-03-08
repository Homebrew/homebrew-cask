cask "logisim-evolution" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.1.0"
  sha256 arm:   "064497e336aca4d7d85bcb1ff1f77ca109de751c17c22717d1e76cc2dcce9518",
         intel: "d5c329c73c3d8d62e9419613f0d4b7d0cd59f6318a8f918ab32b6c5d76cc23af"

  url "https://github.com/logisim-evolution/logisim-evolution/releases/download/v#{version}/Logisim-evolution-#{version}-#{arch}.dmg"
  name "Logisim Evolution"
  desc "Digital logic designer and simulator"
  homepage "https://github.com/logisim-evolution/logisim-evolution"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Logisim-evolution.app"

  zap trash: "~/Library/Preferences/com.cburch.logisim.plist"
end

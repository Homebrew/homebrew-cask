cask "logisim-evolution" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.0.0"
  sha256 arm:   "94d2af5850565b76d87602e6908858175945f7f764111f0c8a357d882757b179",
         intel: "135fb814636850c1230b35603f703c031e140adfd47962c7e79a7dd2999876d3"

  url "https://github.com/logisim-evolution/logisim-evolution/releases/download/v#{version}/Logisim-evolution-#{version}-#{arch}.dmg"
  name "Logisim Evolution"
  desc "Digital logic designer and simulator"
  homepage "https://github.com/logisim-evolution/logisim-evolution"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "Logisim-evolution.app"

  zap trash: "~/Library/Preferences/com.cburch.logisim.plist"
end

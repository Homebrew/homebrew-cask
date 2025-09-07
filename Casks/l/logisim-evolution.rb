cask "logisim-evolution" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.0.0"
  sha256 arm:   "a92fd373e9dae96f00a7db3e494b36a17a7f9cd37e3cd9fa691ea956e099363a",
         intel: "8681ec2ac4e57435f77c1106b484cbfce24670a103ddad36187d7dffdd7de51f"

  url "https://github.com/logisim-evolution/logisim-evolution/releases/download/v#{version}/Logisim-evolution-#{version}-#{arch}.dmg"
  name "Logisim Evolution"
  desc "Digital logic designer and simulator"
  homepage "https://github.com/logisim-evolution/logisim-evolution"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Logisim-evolution.app"

  zap trash: "~/Library/Preferences/com.cburch.logisim.plist"
end

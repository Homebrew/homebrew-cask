cask "notch-simulator" do
  version "2.1"
  sha256 "7e884cc68b0dcf163a963ebe4ffdaf7ce2a5700a0caa0d1d874115d5e6c03d43"

  url "https://github.com/megabitsenmzq/Notch-Simulator/releases/download/#{version}/Notch.Simulator.zip"
  name "Notch Simulator"
  desc "Simulate the notch on the MacBook Pro"
  homepage "https://github.com/megabitsenmzq/Notch-Simulator"

  deprecate! date: "2024-01-12", because: :discontinued

  app "Notch Simulator.app"

  zap trash: "~/Library/Containers/com.JinyuMeng.Notch-Simulator"
end

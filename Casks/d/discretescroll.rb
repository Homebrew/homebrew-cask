cask "discretescroll" do
  version "1.0.0"
  sha256 "00f30ed94d3500514593099ceb5aabe06dff540363d051deaa3abd2680b52eb4"

  url "https://github.com/emreyolcu/discrete-scroll/releases/download/v#{version}/DiscreteScroll.zip"
  name "DiscreteScroll"
  desc "Utility to fix a common scroll wheel problem"
  homepage "https://github.com/emreyolcu/discrete-scroll"

  app "DiscreteScroll.app"

  zap trash: "~/Library/Preferences/com.emreyolcu.DiscreteScroll.plist"
end

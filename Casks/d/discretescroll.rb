cask "discretescroll" do
  version "1.2.0"
  sha256 "660bbff46cf637921b3d255a6adf8c37f75aada7902c5da6f4842183c89c0bde"

  url "https://github.com/emreyolcu/discrete-scroll/releases/download/v#{version}/DiscreteScroll.zip"
  name "DiscreteScroll"
  desc "Utility to fix a common scroll wheel problem"
  homepage "https://github.com/emreyolcu/discrete-scroll"

  app "DiscreteScroll.app"

  zap trash: "~/Library/Preferences/com.emreyolcu.DiscreteScroll.plist"
end

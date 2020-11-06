cask "discretescroll" do
  version "0.1.1"
  sha256 "334be6c8d84c11ee1ef1ac96d891c3b24cfc4efb8c6a11a2042630961e2952ab"

  url "https://github.com/emreyolcu/discrete-scroll/releases/download/v#{version}/DiscreteScroll.zip"
  appcast "https://github.com/emreyolcu/discrete-scroll/releases.atom"
  name "DiscreteScroll"
  desc "Utility to fix a common scroll wheel problem"
  homepage "https://github.com/emreyolcu/discrete-scroll"

  app "DiscreteScroll.app"
end

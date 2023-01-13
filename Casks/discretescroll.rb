cask "discretescroll" do
  version "0.1.1u"
  sha256 "773a05b4add3763297b65a8c74335ccc4b5fa57b817b2420198326618198f669"

  url "https://github.com/emreyolcu/discrete-scroll/releases/download/v#{version}/DiscreteScroll.zip"
  name "DiscreteScroll"
  desc "Utility to fix a common scroll wheel problem"
  homepage "https://github.com/emreyolcu/discrete-scroll"

  app "DiscreteScroll.app"
end

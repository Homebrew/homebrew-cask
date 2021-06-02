cask "macstroke" do
  version "2.0.1"
  sha256 "c577aec2791f33a95ce0a33fe9e3691ae91c64d3bd02cc71dde6a24e1f71d7de"

  url "https://github.com/mtjo/MacStroke/releases/download/#{version}/MacStroke.zip"
  name "Macstroke"
  desc "Make new mouse gestures"
  homepage "https://github.com/mtjo/MacStroke"

  app "MacStroke.app"
end

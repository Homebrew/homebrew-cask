cask "macstroke" do
  version "2.0.1"
  sha256 "c577aec2791f33a95ce0a33fe9e3691ae91c64d3bd02cc71dde6a24e1f71d7de"

  url "https://github.com/mtjo/MacStroke/releases/download/#{version}/MacStroke.zip"
  name "macstroke"
  desc "MacStroke is a Configurable global mouse gesture for macOS.
  MacStroke 是 macOS上一款高度可配置的全局鼠标手势软件。"
  homepage "https://github.com/mtjo/MacStroke"
  appcast "https://github.com/mtjo/MacStroke/blob/release/AppCast.xml"
  app "MacStroke.app"
end

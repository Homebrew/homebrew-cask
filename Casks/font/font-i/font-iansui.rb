cask "font-iansui" do
  version "1.020"
  sha256 "28d58aef9b7a21c137945a4fd14138d6284a8573c0c1b123f6e5b708423348a6"

  url "https://github.com/ButTaiwan/iansui/releases/download/v#{version}/iansui.zip"
  name "iansui"
  homepage "https://github.com/ButTaiwan/iansui"

  font "Iansui-Regular.ttf"

  # No zap stanza required
end

cask "moonglow" do
  version "1.0.1"
  sha256 "24117b12bba6103d6d3341af173064e97db94fdc63ecbec3f597df270677d319"

  url "https://github.com/prompt-smithy/moonglow/releases/download/v#{version}/Moonglow-macOS-universal.zip"
  name "Moonglow"
  desc "Display brightness and colour temperature control"
  homepage "https://github.com/prompt-smithy/moonglow"

  app "Moonglow.app"
end

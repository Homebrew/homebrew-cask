cask "playback" do
  version "1.6.0"
  sha256 "32588de0f9f8c6281cae11e4f64f5f4e4d3919f5d8b94d03be4d8552fbd8f0a8"

  # github.com/mafintosh/playback/ was verified as official when first introduced to the cask
  url "https://github.com/mafintosh/playback/releases/download/v#{version}/Playback.app.zip"
  appcast "https://github.com/mafintosh/playback/releases.atom"
  name "Playback"
  desc "Video player"
  homepage "https://mafintosh.github.io/playback/"

  app "Playback.app"
end

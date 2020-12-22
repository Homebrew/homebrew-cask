cask "simple-comic" do
  version "1.9.1"
  sha256 "d86e95504106718cd73f2eea8505428cabfdcfa42bc0cc7028807aa865e1d9b3"

  url "https://github.com/MaddTheSane/Simple-Comic/releases/download/#{version}/Simple.Comic.app.zip"
  appcast "https://github.com/MaddTheSane/Simple-Comic/releases.atom"
  name "Simple Comic"
  desc "Streamlined comic viewer"
  homepage "https://github.com/MaddTheSane/Simple-Comic"

  app "Simple Comic.app"
end

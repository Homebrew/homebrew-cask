cask "flame" do
  version "2.6.0"
  sha256 "fc86b75a0f2be52be3ec6ce2e260fa816fffe8e0d14caf87c3e8050ed0ec0b1a"

  # github.com/tominsam/flametouch/ was verified as official when first introduced to the cask
  url "https://github.com/tominsam/flametouch/releases/download/#{version}/Flame_#{version}.zip"
  appcast "https://github.com/tominsam/flametouch/releases.atom"
  name "Flame"
  desc "Rendezvous service browser for iPhone / iPod touch"
  homepage "https://movieos.org/code/flame/"

  depends_on macos: ">= :catalina"

  app "Flame.app"
end

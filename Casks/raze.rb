cask "raze" do
  version "0.7.3"
  sha256 "0f062dcc18c0fa08e812c20c028fb24063a8eeb00c075f04b3f37894b8427cac"

  url "https://github.com/coelckers/Raze/releases/download/#{version}_alpha/raze-macos-#{version}.zip"
  appcast "https://github.com/coelckers/Raze/releases.atom"
  name "raze"
  desc "Build engine port backed by GZDoom tech"
  homepage "https://github.com/coelckers/Raze"

  app "Raze.app"
end

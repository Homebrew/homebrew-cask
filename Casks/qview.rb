cask "qview" do
  version "5.0"
  sha256 "a023cd363ebc5f95e01746b04322eeea179f6dde1fe65f9cb386e7de266c45ab"

  url "https://github.com/jurplel/qView/releases/download/#{version}/qView-#{version}.dmg"
  name "qView"
  desc "Image viewer"
  homepage "https://github.com/jurplel/qView/"

  app "qView.app"
end

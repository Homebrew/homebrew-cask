cask "openkey" do
  version "2.0.5"
  sha256 "0551e0b73f2aff1c75098124f348ea871b8a7233f8c407875ceb69d7b8f84b1c"

  url "https://github.com/tuyenvm/OpenKey/releases/download/#{version}/OpenKey#{version}.dmg"
  name "OpenKey"
  desc "Vietnamese input system"
  homepage "https://github.com/tuyenvm/OpenKey/"

  app "OpenKey.app"
end

cask "openkey" do
  version "2.0.3"
  sha256 "e6313d301e88cd286c5f2de986ac0e72a6f7dc7312c2412e56f3eb5633c965ad"

  url "https://github.com/tuyenvm/OpenKey/releases/download/#{version}/OpenKey#{version}.dmg"
  appcast "https://github.com/tuyenvm/OpenKey/releases.atom"
  name "OpenKey"
  desc "Vietnamese input system"
  homepage "https://github.com/tuyenvm/OpenKey/"

  app "OpenKey.app"
end

cask "openkey" do
  version "2.0.4"
  sha256 "422ea5cca0873fc6af739bb339e5a0c79837aa3b3baecc68790a0f2382756de1"

  url "https://github.com/tuyenvm/OpenKey/releases/download/#{version}/OpenKey#{version}.dmg"
  appcast "https://github.com/tuyenvm/OpenKey/releases.atom"
  name "OpenKey"
  desc "Vietnamese input system"
  homepage "https://github.com/tuyenvm/OpenKey/"

  app "OpenKey.app"
end

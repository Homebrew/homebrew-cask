cask "outline-manager" do
  version "1.6.0"
  sha256 "e145dd9598d44cc5cb613a574f2494c69fc4ae975ed3c5459ed4216f78da948e"

  # github.com/Jigsaw-Code/outline-server/ was verified as official when first introduced to the cask
  url "https://github.com/Jigsaw-Code/outline-server/releases/download/v#{version}/Outline-Manager.dmg"
  appcast "https://github.com/Jigsaw-Code/outline-server/releases.atom"
  name "Outline Manager"
  desc "Tool to create and manage Outline servers, powered by Shadowsocks"
  homepage "https://www.getoutline.org/"

  app "Outline Manager.app"
end

cask "outline-manager" do
  version "1.6.1"
  sha256 "329db2c8c64c5b8700f0ade335d69c68020dd5ab0ff788a68c90771b1dc6905a"

  # github.com/Jigsaw-Code/outline-server/ was verified as official when first introduced to the cask
  url "https://github.com/Jigsaw-Code/outline-server/releases/download/v#{version}/Outline-Manager.dmg"
  appcast "https://github.com/Jigsaw-Code/outline-server/releases.atom"
  name "Outline Manager"
  desc "Tool to create and manage Outline servers, powered by Shadowsocks"
  homepage "https://www.getoutline.org/"

  app "Outline Manager.app"
end

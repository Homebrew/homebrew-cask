cask "electorrent" do
  version "2.7.1"
  sha256 "e254a87fd5ef2d4df0e57f3b4fc4cc9390ca1b1b7f9d5cae66a39206428e0786"

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast "https://github.com/Tympanix/Electorrent/releases.atom"
  name "Electorrent"
  homepage "https://github.com/Tympanix/Electorrent"

  app "Electorrent.app"
end

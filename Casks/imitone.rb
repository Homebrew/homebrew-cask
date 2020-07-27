cask "imitone" do
  version "0.10.0c"
  sha256 "18aedd3b06737cbb71e04260c5e79a0c541d6f8b2745c7679fe4777fca515cf0"

  url "https://imitone.com/beta/imitone-#{version}.dmg"
  appcast "https://imitone.com/beta/"
  name "imitone"
  homepage "https://imitone.com/"

  app "imitone.app"
end

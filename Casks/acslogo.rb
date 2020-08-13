cask "acslogo" do
  version "1.6"
  sha256 "467e4ff74265308de2262dc46d88f15841618c6fab4b4b761f32191214123a1c"

  url "https://www.alancsmith.co.uk/logo/ACSLogo#{version.no_dots}.dmg",
      user_agent: :fake
  appcast "https://www.alancsmith.co.uk/logo/release.html"
  name "ACSLogo"
  homepage "https://www.alancsmith.co.uk/logo/"

  app "ACSLogo.app"
end

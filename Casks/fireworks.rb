cask "fireworks" do
  version "1.2,1200"
  sha256 :no_check

  url "https://www.fireworksapp.xyz/public/fireworks.zip"
  appcast "https://www.fireworksapp.xyz"
  name "Fireworks"
  desc "Particle effects editor"
  homepage "https://www.fireworksapp.xyz/"

  app "Fireworks.app"

  zap trash: [
    "~/Library/Application Scripts/com.Besher-Al-Maleh.fireworks",
    "~/Library/Containers/com.Besher-Al-Maleh.fireworks",
  ]
end

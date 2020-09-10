cask "fireworks" do
  version "1.2"
  sha256 "925774f32399c6b11e8e07cab5fb39f30c5bf7df6896540992065e5bac0327cd"

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

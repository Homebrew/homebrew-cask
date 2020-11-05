cask "insulator" do
    version "0.1.3"
    sha256 "7177147780a4e0704dd323be3318ae5cc3474fe275b291ebdda265bcba6293f5"
    url "https://github.com/andrea-vinci/Insulator/releases/download/#{version}/insulator-mac.zip"

  appcast 'https://github.com/andrea-vinci/insulator/releases.atom'
  name "Insulator"
  desc "A tool for devs to debug Kafka based applications and servicesi"
  homepage "https://andrea-vinci.github.io/Insulator/"

  auto_updates false

  app "Insulator.app"

  zap trash: [
  "~/.insulator.config"
  ]
end

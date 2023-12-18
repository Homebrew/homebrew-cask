cask "ramme" do
  version "3.2.5"
  sha256 "49a4f8d1623f855322a34e670e17261a8add1ac8b764ffcd027ccb71b82fb1b0"

  url "https://github.com/terkelg/ramme/releases/download/v#{version}/Ramme-#{version}.dmg"
  name "Ramme"
  desc "Unofficial Instagram Desktop App"
  homepage "https://github.com/terkelg/ramme/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Ramme.app"
end

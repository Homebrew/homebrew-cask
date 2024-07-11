cask "ejector" do
  version "0.8.1"
  sha256 "c6fefa1788a1a67793456e9620e18b9613c19634b649ebf6578e9c082ff4946e"

  url "https://www.jeb.com.fr/soft/Ejector-v#{version}.dmg"
  name "Ejector"
  desc "Adds an Eject icon to the menu bar"
  homepage "https://www.jeb.com.fr/en/ejector.shtml"

  disable! date: "2024-07-10", because: "is 32-bit only"

  app "Ejector.app"
end

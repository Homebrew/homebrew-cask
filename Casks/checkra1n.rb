cask "checkra1n" do
  version "0.12.1"
  sha256 "155b1a98ba277999fb4154e63c5e14c6b5be684b4ba901480cfbf3641a8e18d7"

  url "https://checkra.in/assets/downloads/macos/#{sha256}/checkra1n%20beta%20#{version}.dmg"
  appcast "https://checkra.in/"
  name "checkra1n"
  desc "Jailbreak for iPhone 5s through iPhone X, iOS 12.0 and up"
  homepage "https://checkra.in/"

  app "checkra1n.app"
end

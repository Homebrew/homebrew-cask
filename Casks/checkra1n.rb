cask "checkra1n" do
  version "0.11.0"
  sha256 "d4def982494bc0b99c6df57dc94338c205902aaa8949e9ae046812ed57743ccb"

  url "https://checkra.in/assets/downloads/macos/#{sha256}/checkra1n%20beta%20#{version}.dmg"
  appcast "https://checkra.in/"
  name "checkra1n"
  desc "Jailbreak for iPhone 5s through iPhone X, iOS 12.0 and up"
  homepage "https://checkra.in/"

  app "checkra1n.app"
end

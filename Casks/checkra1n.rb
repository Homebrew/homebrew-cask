cask "checkra1n" do
  version "0.12.0"
  sha256 "13229300c912c2280862ceff3bfceb08d497d86033654f834ce5bb025740e162"

  url "https://checkra.in/assets/downloads/macos/#{sha256}/checkra1n%20beta%20#{version}.dmg"
  appcast "https://checkra.in/"
  name "checkra1n"
  desc "Jailbreak for iPhone 5s through iPhone X, iOS 12.0 and up"
  homepage "https://checkra.in/"

  app "checkra1n.app"
end

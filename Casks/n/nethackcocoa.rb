cask "nethackcocoa" do
  version "0.3.4"
  sha256 "83a9db8f633996a563fbe939141404625f9cf66180612215484f391df0475e94"

  url "https://github.com/dirkz/NetHack-Cocoa/releases/download/v#{version}/NetHackCocoa-#{version}.dmg"
  name "NetHackCocoa"
  homepage "https://github.com/dirkz/NetHack-Cocoa"

  disable! date: "2024-07-16", because: "is 32-bit only"

  app "NetHackCocoa.app"
end

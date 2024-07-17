cask "minitimer" do
  version "1.0"
  sha256 "848ef850f3bbe703a6d2f7e2513c8a60b82399a20f1ae11f7ee2592d0d55975c"

  url "https://kevingessner.com/public/downloads/miniTimer/#{version}/miniTimer.dmg"
  name "miniTimer"
  desc "Unobtrusive, lightweight timer"
  homepage "https://kevingessner.com/software/minitimer/"

  disable! date: "2024-07-16", because: "is 32-bit only"

  app "miniTimer.app"
end

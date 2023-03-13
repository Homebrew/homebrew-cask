cask "barbox" do
  version "2.3.0"
  sha256 "c563cf1b84b267230e75539373609410cb8d059cfd0789e1a6926e2eb4bc6519"

  url "https://github.com/MuhammedKpln/barbox/releases/download/#{version}/BarBox.dmg"
  name "Barbox"
  desc "Your disposable email address at your menubar!"
  homepage "https://github.com/MuhammedKpln/barbox"

  app "BarBox.app"
end

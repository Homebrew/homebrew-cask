cask "brisk" do
  version "1.2.0"
  sha256 "1ad1da10a3bb2b31af88bc19b6f5b3a018de63e922f632fbdcd7a5e626b96601"

  url "https://github.com/br1sk/brisk/releases/download/#{version}/Brisk.app.tar.gz"
  appcast "https://github.com/br1sk/brisk/releases.atom"
  name "Brisk"
  desc "App for submitting radars"
  homepage "https://github.com/br1sk/brisk"

  app "Brisk.app"
end

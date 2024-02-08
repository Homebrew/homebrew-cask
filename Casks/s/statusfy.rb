cask "statusfy" do
  version "1.4.0"
  sha256 "7fcd2bf27000bec59ef76343621fc4c551c68dd5ab338742ca824b2c5fe0771b"

  url "https://github.com/paulyoung/Statusfy/releases/download/#{version}/Statusfy.zip"
  name "Statusfy"
  desc "Spotify in the status bar"
  homepage "https://github.com/paulyoung/Statusfy"

  app "Statusfy.app"
end

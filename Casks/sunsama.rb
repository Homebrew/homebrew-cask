cask "sunsama" do
  version "1.0.0"
  sha256 "b110481cc0aa30db62cdcf1f3eb445a1da5bf2080b51f73190829665ae6511dd"

  url "http://download.sunsama.com/desktop/Sunsama-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/download.sunsama.com/desktop/latest-mac.yml"
  name "Sunsama"
  homepage "https://app.sunsama.com/desktop"

  app "Sunsama.app"
end

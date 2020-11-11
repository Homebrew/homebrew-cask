cask "macdive" do
  version "2.12.2"
  sha256 "9a29f3983d9e05e937d58b2ced2ad2a36cc37c0b6cf3fdb69cbedaa1e8575595"

  url "https://www.mac-dive.com/downloads/MacDive_#{version}.dmg"
  appcast "https://www.mac-dive.com/shimmer/?appcast&appName=MacDive"
  name "MacDive"
  homepage "https://www.mac-dive.com/"

  app "MacDive.app"
end

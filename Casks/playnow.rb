cask "playnow" do
  version "0.4"
  sha256 "c082bc144ca1991bf045ee5f416a0066c549e6adb35d49edf881a58f8dbec801"

  url "https://github.com/marcboquet/PlayNow/releases/download/v#{version}/PlayNow.tgz"
  appcast "https://github.com/marcboquet/PlayNow/releases.atom"
  name "PlayNow"
  homepage "https://github.com/marcboquet/PlayNow/"

  app "PlayNow.app"
end

cask "remember-the-milk" do
  version "1.2.4"
  sha256 "423265ee1458bea54fc90665ce9a22594785de71cb2ff09ec450c77fcdadacb3"

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  appcast "https://www.rememberthemilk.com/services/mac/"
  name "Remember The Milk"
  homepage "https://www.rememberthemilk.com/"

  app "Remember The Milk.app"
end

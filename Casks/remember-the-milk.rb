cask "remember-the-milk" do
  version "1.2.3"
  sha256 "07fe37118f66c5eb1396f6c4b2c2ea6df17f279f0c16b8cc2a11d9c197a4b167"

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  appcast "https://www.rememberthemilk.com/services/mac/"
  name "Remember The Milk"
  homepage "https://www.rememberthemilk.com/"

  app "Remember The Milk.app"
end

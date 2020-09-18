cask "remember-the-milk" do
  version "1.2.8"
  sha256 "f8a8ed97a30e4bdc154cd0d10b1b4a689bb2f4d20365db660ab1f13c99fbd4d6"

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  appcast "https://www.rememberthemilk.com/services/mac/"
  name "Remember The Milk"
  homepage "https://www.rememberthemilk.com/"

  app "Remember The Milk.app"
end

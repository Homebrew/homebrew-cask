cask "remember-the-milk" do
  version "1.2.7"
  sha256 "0c054b2342f77d2be9f16a0e4fabfd99ca125ac07c27213ddb3b26564a23d41b"

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  appcast "https://www.rememberthemilk.com/services/mac/"
  name "Remember The Milk"
  homepage "https://www.rememberthemilk.com/"

  app "Remember The Milk.app"
end

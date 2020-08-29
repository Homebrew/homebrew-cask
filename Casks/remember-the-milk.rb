cask "remember-the-milk" do
  version "1.2.6"
  sha256 "7ee3fea0ec41df0d4beed06dda4ba9a388e6265218b85a1651f1d3e04f17957b"

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  appcast "https://www.rememberthemilk.com/services/mac/"
  name "Remember The Milk"
  homepage "https://www.rememberthemilk.com/"

  app "Remember The Milk.app"
end

cask "remember-the-milk" do
  version "1.2.9"
  sha256 "c3e04a8b19a8b9c5e57ecc8f51fc8adf3aad28df644fee162839b72954724334"

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  appcast "https://www.rememberthemilk.com/services/mac/"
  name "Remember The Milk"
  homepage "https://www.rememberthemilk.com/"

  app "Remember The Milk.app"
end

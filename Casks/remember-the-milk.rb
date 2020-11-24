cask "remember-the-milk" do
  version "1.3.0"
  sha256 "fe9750c55083b36e01b57b6c9f5fa9722ee2f92f2864017036440505bcf5e029"

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}-x64.zip"
  appcast "https://www.rememberthemilk.com/services/mac/"
  name "Remember The Milk"
  homepage "https://www.rememberthemilk.com/"

  app "Remember The Milk.app"
end

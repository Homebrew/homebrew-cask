cask "remember-the-milk" do
  version "1.2.5"
  sha256 "9d039816bf100b3bccec84da0818cf89de02661d3c0ed3a4d4f402ab5b38f712"

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  appcast "https://www.rememberthemilk.com/services/mac/"
  name "Remember The Milk"
  homepage "https://www.rememberthemilk.com/"

  app "Remember The Milk.app"
end

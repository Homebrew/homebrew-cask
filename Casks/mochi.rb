cask "mochi" do
  version "1.6.14"
  sha256 "5c628f992ed6735e2ad0887746557d3f629ef358d479a4d161e001f937ce3f1e"

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast "https://mochi.cards/"
  name "Mochi"
  homepage "https://mochi.cards/"

  app "Mochi.app"
end

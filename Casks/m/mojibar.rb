cask "mojibar" do
  version "2.6.2"
  sha256 "28e9811bb9a43c15f7a7ba9100e86cc5f45e4f53c093cd9f08972fda8694b363"

  url "https://github.com/muan/mojibar/releases/download/#{version}/mojibar.zip"
  name "Mojibar"
  desc "Emoji searcher as a menu bar app"
  homepage "https://github.com/muan/mojibar"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Mojibar-darwin-x64/Mojibar.app"
end

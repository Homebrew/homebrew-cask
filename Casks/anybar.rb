cask "anybar" do
  version "0.2.2"
  sha256 "7362ac46347167335367b9039478aed98a1333b2898a03462f93f155b9d1b603"

  url "https://github.com/tonsky/AnyBar/releases/download/#{version}/AnyBar-#{version}.zip"
  name "AnyBar"
  desc "Menu bar status indicator"
  homepage "https://github.com/tonsky/AnyBar"

  livecheck do
    url :url
    strategy :git
  end

  app "AnyBar.app"
end

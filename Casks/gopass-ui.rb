cask "gopass-ui" do
  version "0.8.0"
  sha256 "b31d8da91e622c2b1c85b837e9eacdb345ba6aafeaaeea0a9a16282e7ae8e596"

  url "https://github.com/codecentric/gopass-ui/releases/download/v#{version}/Gopass.UI-#{version}.dmg"
  name "Gopass UI"
  desc "Password manager for teams"
  homepage "https://github.com/codecentric/gopass-ui"

  app "Gopass UI.app"

  zap trash: "~/.config/gopass"
end

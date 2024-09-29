cask "mucommander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.1-1"
  sha256 arm:   "a214856585a95b91426cf9306d7e9d65d1e1d8079b846eb9dd56f66ae3396283",
         intel: "2eaca71da3f8e588b15fe28b08559c15cf0dcd34c62e778c0a5fae5478908489"

  url "https://github.com/mucommander/mucommander/releases/download/#{version}/muCommander-#{version}-#{arch}.dmg",
      verified: "github.com/mucommander/mucommander/"
  name "muCommander"
  desc "File manager with a dual-pane interface"
  homepage "https://www.mucommander.com/"

  app "muCommander.app"

  zap trash: "~/Library/Preferences/muCommander"
end

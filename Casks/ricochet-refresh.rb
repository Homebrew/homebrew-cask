cask "ricochet-refresh" do
  version "3.0.10"
  sha256 "c9751b6f78365777f083d619aa36947bc83ae9043b4b74f099f884b70d8398ef"

  url "https://github.com/blueprint-freespeech/ricochet-refresh/releases/download/v#{version}-release/ricochet-refresh-#{version}-macos-x86_64.dmg",
      verified: "github.com/blueprint-freespeech/ricochet-refresh/"
  name "ricochet-refresh"
  desc "Private and anonymous instant messaging over tor"
  homepage "ricochetrefresh.net"

  app "Ricochet Refresh.app"
end

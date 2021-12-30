cask "ricochet-refresh" do
  version "3.0.10"
  sha256 "c9751b6f78365777f083d619aa36947bc83ae9043b4b74f099f884b70d8398ef"

  url "https://github.com/blueprint-freespeech/ricochet-refresh/releases/download/v#{version}-release/ricochet-refresh-#{version}-macos-x86_64.dmg",
      verified: "github.com/blueprint-freespeech/ricochet-refresh/"
  name "Ricochet Refresh"
  desc "Private and anonymous instant messaging over tor"
  homepage "https://www.ricochetrefresh.net/"

  livecheck do
    url "https://github.com/blueprint-freespeech/ricochet-refresh/releases"
    strategy :page_match
    regex(/ricochet[._-]refresh[._-]v?(\d+(?:\.\d+)*)[._-]macos[._-]x86[._-]64\.dmg/i)
  end

  app "Ricochet Refresh.app"

  zap trash: "~/Library/Application Support/Ricochet-Refresh"
end

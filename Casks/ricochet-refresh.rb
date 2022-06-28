cask "ricochet-refresh" do
  version "3.0.12"
  sha256 "2501ba6f57241d12a02c36109069f6efdb4ac43ae0439a036d1a5a7e8bf196c4"

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

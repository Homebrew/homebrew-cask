cask "ricochet-refresh" do
  version "3.0.11"
  sha256 "dc1145c0e05709eb01b2dfdf41b8a0603516889aad4b359d5fe5d09c072f4d0e"

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

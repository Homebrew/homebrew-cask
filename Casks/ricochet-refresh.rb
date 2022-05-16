cask "ricochet-refresh" do
  version "3.0.12"
  sha256 "7cf425c1c5d47d0e5714419f97e20e04021e2e1f4cf5f180075d4622f20baf2b"

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

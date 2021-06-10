cask "mudlet" do
  version "4.12.0"
  sha256 "079cc52457fdeeba273985e94f6cb9e2a4e4a4f8746acb3f92ddb9658c8b8b89"

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  name "Mudlet"
  desc "Multi-User Dungeon client"
  homepage "https://www.mudlet.org/"

  livecheck do
    url "https://github.com/Mudlet/Mudlet"
    strategy :git
  end

  depends_on macos: ">= :high_sierra"

  app "Mudlet.app"
end

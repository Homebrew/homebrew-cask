cask "the-battle-for-wesnoth" do
  version "1.18.3"
  sha256 "2217d851683338344663318eff717f3e7184ffc93c1d002fb9b6f1c66132aa19"

  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg",
      verified: "sourceforge.net/wesnoth/"
  name "The Battle for Wesnoth"
  desc "Fantasy-themed turn-based strategy game"
  homepage "https://www.wesnoth.org/"

  livecheck do
    url "https://wiki.wesnoth.org/Download"
    regex(/href=.*?Wesnoth[._-]v?(\d+\.\d*[02468](?:\.\d+)*[a-z]?)\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "The Battle for Wesnoth.app"

  zap trash: [
    "~/Library/Application Scripts/org.wesnoth.Wesnoth",
    "~/Library/Containers/org.wesnoth.Wesnoth",
  ]
end

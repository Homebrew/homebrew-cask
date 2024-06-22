cask "the-battle-for-wesnoth" do
  version "1.18.1"
  sha256 "54e1cc4f61a5b4269872d7a2dacd449f3cd27b872f586147199b2e2b629b671f"

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

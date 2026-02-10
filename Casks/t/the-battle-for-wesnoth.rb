cask "the-battle-for-wesnoth" do
  version "1.18.6"
  sha256 "1b9a0ba71c11a386ea0daef357cb508f5c9dc792eed71eff1a3783c056214c93"

  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg",
      verified: "sourceforge.net/wesnoth/"
  name "The Battle for Wesnoth"
  desc "Fantasy-themed turn-based strategy game"
  homepage "https://www.wesnoth.org/"

  livecheck do
    url "https://wiki.wesnoth.org/Download"
    regex(/href=.*?Wesnoth[._-]v?(\d+\.\d*[02468](?:\.\d+)*[a-z]?)\.dmg/i)
  end

  app "The Battle for Wesnoth.app"

  zap trash: [
    "~/Library/Application Scripts/org.wesnoth.Wesnoth",
    "~/Library/Containers/org.wesnoth.Wesnoth",
  ]
end

cask "the-battle-for-wesnoth" do
  version "1.16.11"
  sha256 "8cd4af79e180ae90fbdbf740d63f26b0ac05826230eddd96b88c895f59a6525f"

  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg",
      verified: "sourceforge.net/wesnoth/"
  name "The Battle for Wesnoth"
  desc "Fantasy-themed turn-based strategy game"
  homepage "https://www.wesnoth.org/"

  livecheck do
    url :homepage
    regex(/href=.*?Wesnoth[._-]v?(\d+\.\d*[02468](?:\.\d+)*[a-z]?)\.dmg/i)
  end

  app "The Battle for Wesnoth.app"

  zap trash: [
    "~/Library/Application Scripts/org.wesnoth.Wesnoth",
    "~/Library/Containers/org.wesnoth.Wesnoth",
  ]
end

cask "guild-wars2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.0"
  sha256 :no_check

  url "https://gw2cdn.s3.amazonaws.com/client/branches/Gw2Setup-64.dmg",
      verified: "gw2cdn.s3.amazonaws.com/"
  name "Guild Wars 2"
  desc "Online roleplaying game"
  homepage "https://www.guildwars2.com/"

  disable! date: "2024-07-06", because: :discontinued

  app "Guild Wars 2 64-bit.app"

  zap trash: [
    "~/Library/Application Support/Guild Wars 2",
    "~/Library/Preferences/net.arena.Guild-Wars-2.plist",
    "~/Library/Saved Application State/net.arena.Guild-Wars-2.savedState",
  ]

  caveats do
    requires_rosetta
  end
end

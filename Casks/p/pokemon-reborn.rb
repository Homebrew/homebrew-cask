cask "pokemon-reborn" do
  version "19.5.0"
  sha256 "51476f9112a9237b0ec27164cba425ee2c5720f823736d76c8d1ce1d6d0f8129"

  url "https://www.rebornevo.com/downloads/rebornremote/Reborn_#{version.major_minor}/Reborn-#{version}-macos.zip"
  name "Pokemon Reborn"
  desc "Third-party Pokemon game"
  homepage "https://www.rebornevo.com/"

  livecheck do
    url "https://pkmnfan.games/reborn-mac"
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "Reborn.app"

  zap trash: [
    "~/Library/Application Support/Pokemon Reborn",
    "~/Library/Saved Application State/org.struma.mkxp-z.savedState",
  ]
end

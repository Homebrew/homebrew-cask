cask "postico" do
  version "2.3.5,9817"
  sha256 "34ec7730de0796c008e0caf9f366629a3043c5813c79f749e47d22084afb6e0f"

  url "https://downloads.eggerapps.at/postico/postico-#{version.csv.second}.dmg"
  name "Postico"
  desc "GUI client for PostgreSQL databases"
  homepage "https://eggerapps.at/postico#{version.major}/"

  livecheck do
    url "https://releases.eggerapps.at/postico#{version.major}/appcast.xml?update_channel=2"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "postico@1"
  depends_on macos: :sonoma

  app "Postico #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/at.eggerapps.Postico",
    "~/Library/Caches/at.eggerapps.Postico",
    "~/Library/Containers/at.eggerapps.Postico",
    "~/Library/Preferences/at.eggerapps.Postico.plist",
    "~/Library/Saved Application State/at.eggerapps.Postico.savedState",
  ]
end

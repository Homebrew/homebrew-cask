cask "mellow" do
  version "0.1.22"
  sha256 "f8b168fb1a491032a4c56df3350e67db3a32a94beeeeeae4e17e6ce426002099"

  url "https://github.com/mellow-io/mellow/releases/download/v#{version}/Mellow-#{version}.dmg"
  name "Mellow"
  desc "Rule-based global transparent proxy client"
  homepage "https://github.com/mellow-io/mellow"

  deprecate! date: "2024-07-27", because: :unmaintained

  app "Mellow.app"

  zap trash: [
    "/Library/Application Support/Mellow",
    "~/Library/Logs/Mellow",
    "~/Library/Preferences/org.mellow.mellow.plist",
  ]

  caveats do
    requires_rosetta
  end
end

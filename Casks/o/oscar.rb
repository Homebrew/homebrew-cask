cask "oscar" do
  version "1.6.1"
  sha256 "eca3cdf056519480b9079c513e1ef99b7e27ef0a6ad139fbaca05d8c8cb68ffa"

  url "https://www.apneaboard.com/OSCAR/#{version}/OSCAR-#{version}.dmg",
      verified: "apneaboard.com/OSCAR/"
  name "OSCAR"
  desc "CPAP Analysis Reporter"
  homepage "https://www.sleepfiles.com/OSCAR/"

  disable! date: "2025-11-15", because: :unreachable

  app "OSCAR.app"

  zap trash: [
    "~/Library/Preferences/org.oscar-team.OSCAR.plist",
    "~/Library/Saved Application State/org.oscar-team.OSCAR.savedState",
  ]

  caveats do
    requires_rosetta
  end
end

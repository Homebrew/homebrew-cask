cask "qlab" do
  version "4.6.11,4611"
  sha256 "6684839b11cd959f196a6ee8dd842751f60c16ab71c6e4f1a569990ebb47a1a6"

  url "https://qlab.app/downloads/archive/QLab-#{version.csv.first}.zip"
  name "QLab"
  homepage "https://qlab.app/"

  livecheck do
    url "https://qlab.app/appcast/v#{version.major}/"
    strategy :sparkle
  end

  auto_updates true

  app "QLab.app"
end
